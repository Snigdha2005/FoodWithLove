// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

/*import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:learningdart/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(FigmaToCodeApp());

    // Verify that our counter starts at 0.
    expect(find.text('Getting Started'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}*/
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Widget Test Example', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(MyApp());

    // You can use `expect` to verify the widget's initial state.
    expect(find.text('Food With Love'), findsOneWidget);
    expect(find.text('Getting Started'), findsOneWidget);

    // You can also interact with widgets.
    await tester.tap(find.text('Getting Started'));
    await tester.pump();

    // Expectations after interaction.
    expect(find.text('Button Pressed'), findsOneWidget);
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Food With Love'),
        TextButton(
          onPressed: () {
            print('Button Pressed');
          },
          child: Text('Getting Started'),
        ),
      ],
    );
  }
}
