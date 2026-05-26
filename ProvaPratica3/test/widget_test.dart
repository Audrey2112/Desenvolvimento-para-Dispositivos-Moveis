import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/app/app_widget.dart';

void main() {
  testWidgets('App inicia corretamente', (WidgetTester tester) async {
    await tester.pumpWidget(
      AppWidget({
        '/': (context) => const Scaffold(
              body: Text('Teste'),
            ),
      }),
    );

    expect(find.text('Teste'), findsOneWidget);
  });
}