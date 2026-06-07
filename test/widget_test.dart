import 'package:flutter_test/flutter_test.dart';

// FIX 1: We must use the internal project folder name here, no spaces allowed!
import 'package:airta/main.dart';

void main() {
  testWidgets('App loads smoke test', (WidgetTester tester) async {
    // FIX 2: We must tell the test to actually load our app widget! 
    // This line was missing in your snippet.
    await tester.pumpWidget(const ToxicityAnalyzerApp());
    
    // Verify that our app's title appears on the screen
    expect(find.text('AI Relationship Toxicity Analyzer'), findsWidgets);
  });
}