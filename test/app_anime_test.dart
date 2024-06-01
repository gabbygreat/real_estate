import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:real_estate/resources/resources.dart';

void main() {
  test('app_anime assets test', () {
    expect(File(AppAnime.favourite).existsSync(), true);
    expect(File(AppAnime.message).existsSync(), true);
    expect(File(AppAnime.profile).existsSync(), true);
  });
}
