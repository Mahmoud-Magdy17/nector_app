import 'dart:io';

void main() async {
  final pubspecPath = 'pubspec.yaml';
  final fontsDirectory = Directory('assets/fonts');

  // Check if fonts directory exists
  if (!await fontsDirectory.exists()) {
    print('Error: Fonts directory does not exist!');
    return;
  }

  // Get list of font files
  final fontFiles = fontsDirectory.listSync().where((file) => file.path.endsWith('.ttf')).toList();
  if (fontFiles.isEmpty) {
    print('No fonts found in assets/fonts!');
    return;
  }

  // Read the pubspec.yaml
  final pubspec = File(pubspecPath);
  final pubspecContent = await pubspec.readAsString();

  // Check if fonts already exist in pubspec.yaml
  if (pubspecContent.contains('fonts:')) {
    print('Fonts already added in pubspec.yaml');
    return;
  }

  // Add fonts to pubspec.yaml
  final newFonts = StringBuffer()
    ..writeln('  fonts:')
    ..writeln('    - family: CustomFont')
    ..writeln('      fonts:');

  for (var file in fontFiles) {
    final fileName = file.uri.pathSegments.last;
    newFonts.writeln('        - asset: assets/fonts/$fileName');
  }

  // Append new fonts to pubspec.yaml
  final updatedPubspec = pubspecContent.replaceFirst(
    RegExp(r'flutter:\s*\n'),
    'flutter:\n$newFonts',
  );

  await pubspec.writeAsString(updatedPubspec);
  print('Fonts added to pubspec.yaml successfully!');

  // Run flutter pub get
  await Process.run('flutter', ['pub', 'get']);
  print('flutter pub get completed.');
}
