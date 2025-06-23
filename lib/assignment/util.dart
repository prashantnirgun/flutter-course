import 'dart:io';
// ignore_for_file: avoid_print

int getNumberInput({String label = ''}) {
  if (label.isNotEmpty) {
    stdout.write(label);
  }
  return int.parse(getStringInput());
}

String getStringInput({String label = ''}) {
  if (label.isNotEmpty) {
    stdout.write(label);
  }
  return stdin.readLineSync()!;
}

void clearScreen() {
  if (Platform.isWindows) {
    // Windows Command Prompt (CMD)
    // ANSI escape codes may need to be enabled on older versions
    stdout.write('\x1B[2J\x1B[0;0H');
  } else {
    // Unix-like systems (Linux, macOS)
    stdout.write('\x1B[2J\x1B[H');
  }
}
