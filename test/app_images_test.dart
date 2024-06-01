import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:real_estate/resources/resources.dart';

void main() {
  test('app_images assets test', () {
    expect(File(AppImages.avatar).existsSync(), true);
    expect(File(AppImages.chatImage).existsSync(), true);
    expect(File(AppImages.chat).existsSync(), true);
    expect(File(AppImages.favouriteImage).existsSync(), true);
    expect(File(AppImages.head).existsSync(), true);
    expect(File(AppImages.heart).existsSync(), true);
    expect(File(AppImages.home).existsSync(), true);
    expect(File(AppImages.kitchen).existsSync(), true);
    expect(File(AppImages.map).existsSync(), true);
    expect(File(AppImages.profileImage).existsSync(), true);
    expect(File(AppImages.search).existsSync(), true);
    expect(File(AppImages.sitting).existsSync(), true);
  });
}
