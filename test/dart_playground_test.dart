import 'package:dart_algo_challenges/dart_playground.dart';
import 'package:dart_algo_challenges/stack.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  test('isParentheses', () {
    expect(isParentheses('(testingText)'), true);
  });
  test('isParentheses', () {
    expect(isParentheses('(www)'), true);
  });
  test('isParentheses', () {
    expect(isParentheses('(hello world)'), true);
  });
  test('isParentheses', () {
    expect(isParentheses('(hello)() world)'), false);
  });
}
