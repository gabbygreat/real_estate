import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:real_estate/resources/resources.dart';

void main() {
  test('app_svg assets test', () {
    expect(File(AppSvg.favourite).existsSync(), true);
    expect(File(AppSvg.location).existsSync(), true);
    expect(File(AppSvg.search).existsSync(), true);
    expect(File(AppSvg.stack).existsSync(), true);
  });
}
