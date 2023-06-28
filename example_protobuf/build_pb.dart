import 'dart:io';
import 'package:path/path.dart' as p;
// @ignore_hardcode
/// 传完整路径会指定生成某个PB
/// 在当前目录下执行 dart build_pb.dart
/// 支持所有模块、任意位置的proto
/// 生成 charles_mapping.xml 及 proto.desc 用于抓包
/// 接口->pb结构体 的映射请配置在mapping.json文件中
main(List<String> args) async {
  print('args -> $args');
  if (args.isNotEmpty) {
    ///有路径，只编译当前路径的pb
    String path = args[0];
    Directory pwd = Directory.current;
    if (!path.startsWith(pwd.path)) {
      path = p.join(pwd.path, path);
    }
    print('path -> $path');
    File proto = File(path);
    if (!proto.existsSync()) {
      print('文件不存在');
      return;
    }
    String generatedPath = p.join(proto.parent.path, 'generated');
    Directory generatedDir = Directory(generatedPath);
    if (!generatedDir.existsSync()) {
      generatedDir.createSync(recursive: true);
    }
    await _buildPbDart(proto);
    await _buildIndexDart(proto.parent);
  } else {
    Directory pwd = Directory.current;
    print('pwd -> $pwd');
    final protoFiles = <File>[];
    recursiveDirectoryTraversal(pwd, onFile: (file) {
      if (file.path.endsWith('proto')) {
        protoFiles.add(file);
      }
    });
    print('protoFiles -> $protoFiles');

    await Future.wait(protoFiles.map((e) => _buildPbDart(e)));

    // 在proto目录下生成一个index.dart文件，用于导出所有生成的pb
    final protoDirs = protoFiles.map((e) => p.dirname(e.path)).toSet();
    for (var value in protoDirs) {
      await _buildIndexDart(Directory(value));
    }
  }
}


void recursiveDirectoryTraversal(Directory directory, {Function(File file)? onFile, Function(Directory dir)? onDir}) {
  directory.listSync().forEach((entity) {
    if (entity is File) {
      // 处理文件
      if (onFile != null) {
        onFile(entity);
      }
    } else if (entity is Directory) {
      recursiveDirectoryTraversal(entity, onFile: onFile, onDir: onDir); // 递归遍历子文件夹
      if (onDir != null) {
        onDir(entity);
      }
    }
  });
}

bool _isValidModule(Directory dir) {
  File yaml = File(p.join(dir.path, 'pubspec.yaml'));
  if (!yaml.existsSync()) {
    // is not a flutter module
    return false;
  }
  Directory lib = Directory(p.join(dir.path, 'lib'));
  if (!lib.existsSync()) {
    return false;
  }
  return true;
}

Future<bool> _buildPbDart(File proto) async {
  final output = p.join(proto.parent.path, 'generated');
  Directory outputDir = Directory(output);
  if (!outputDir.existsSync()) {
    outputDir.createSync(recursive: true);
  }
  return Process.run('protoc', [
    '--proto_path=${proto.parent.path}',
    '--dart_out=$output',
    proto.path,
  ]).whenComplete(() {
    print('Process proto: ${proto.path}');
  }).then((processResult) {
    if (processResult.exitCode == 0) {
      // 生成的dart文件
      final outputFileName = p.join(output, p.basenameWithoutExtension(proto.path));
      File pb = File(p.setExtension(outputFileName, '.pb.dart'));
      print('Success: ${pb.path}');
      File(p.setExtension(outputFileName, '.pbserver.dart')).delete();
      return true;
    } else {
      print('Failure: ${processResult.stderr}');
      return false;
    }
  });
}

/// 遍历proto文件夹下的所有proto文件，生成index.dart导出文件
Future _buildIndexDart(Directory protoDir) async {
  final indexDartFile = p.join(protoDir.path, 'index.dart');
  /// 导入所有pb文件
  final allExports = protoDir
      .listSync()
      .where((e) => e.path.endsWith('.proto'))
      .whereType<File>()
      .expand((e) {
    final fileName = p.basenameWithoutExtension(e.path);
    final dartDir = Directory(p.join(e.parent.path, 'generated'));
    final dartExport = <String>[];
    if (File(p.join(dartDir.path, '$fileName.pb.dart')).existsSync()) {
      dartExport.add("export 'generated/$fileName.pb.dart';");
    }
    if (File(p.join(dartDir.path, '$fileName.pbenum.dart')).existsSync()) {
      dartExport.add("export 'generated/$fileName.pbenum.dart';");
    }
    return dartExport;
  }).toList();
  allExports.sort();
  allExports.insert(0, '');

  final extensionDir = Directory(p.join(protoDir.path, 'extension'));
  if (extensionDir.existsSync()) {
    final extensionDarts = extensionDir.listSync()
        .where((element) => element.path.endsWith('.dart'))
        .map((e) => 'export \'extension/${p.basename(e.path)}\';')
        .toList();
    if (extensionDarts.isNotEmpty) {
      allExports.insertAll(0, extensionDarts);
      allExports.insert(0, '');
    }
  }

  final indexDartContent = allExports.join('\n');
  await File(indexDartFile).writeAsString(indexDartContent);


  print('Success: $indexDartFile');
}
