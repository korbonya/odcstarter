import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_starter/main.dart';

void main() {
  testWidgets('App starts and shows Catalogue', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Catalogue'), findsOneWidget);
  });
}
