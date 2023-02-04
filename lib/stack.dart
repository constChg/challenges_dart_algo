bool isParentheses(String testingText) {
  bool result = false;
  // var stack = Stack<String>();
  Stack<String> stack = Stack();

  for (var i = 0; i < testingText.length; i++) {
    var candidate = testingText[i];
    switch (candidate) {
      case '(':
        if (i == (testingText.length - 1)) {
          return false;
        }
        stack.push(candidate);
        break;
      case ')':
        if (stack.get.isEmpty) {
          return false;
        }
        if (stack.get.last == '(') {
          stack.pop(candidate);
          result = true;
        }
        break;
      default:
        continue;
    }
  }

  return result;
}

class Stack<E> {
  final List<E> _stackList;

  Stack() : _stackList = [];

  void push(E item) {
    _stackList.add(item);
  }

  void pop(E item) {
    _stackList.removeLast();
  }

  List<E> get get => _stackList;
}
