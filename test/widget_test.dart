// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
// import 'package:flutter_app/screens/widgets_detais/location_details.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Generate list', (WidgetTester tester) async {
    // TEST WITH BUG, DON'T FIND THE WIDGET;
    await tester.pumpWidget(const Scaffold());
    expect(find.byIcon(Icons.favorite_border), findsOneWidget);
    expect(find.byIcon(Icons.favorite), findsNothing);

    await tester.tap(find.byIcon(Icons.favorite_border));
    await tester.pump();

    expect(find.byIcon(Icons.favorite_border), findsNothing);
    expect(find.byIcon(Icons.favorite), findsOneWidget);

    await tester.tap(find.byIcon(Icons.favorite));
    await tester.pump();

    expect(find.byIcon(Icons.favorite_border), findsOneWidget);
    expect(find.byIcon(Icons.favorite), findsNothing);
  });
}
