class Solution {
  bool isValid(String s) {
    List<String> charInLine = [];
    Map<String, String> parentheseMap = {
      ')': '(',
      '}': '{',
      ']': '[',
    };

    if (s.length.isOdd) return false;

    for (var i = 0; i < s.length; i++) {
      String candidate = s[i];

      switch (candidate) {
        case '(':
        case '{':
        case '[':
          charInLine.add(candidate);
          break;
        case ')':
        case '}':
        case ']':
          if (charInLine.isEmpty) return false;
          if (charInLine.last != parentheseMap[candidate]) {
            return false;
          }
          ;
          charInLine.removeLast();
          break;
        default:
          return false;
      }
      ;
    }

    return charInLine.isEmpty;
  }
}

// LinkedList is writefaster O(1), Array is write o(n);
// Map case for switch case less:
// TODO; linked List

// testcase "()[]{}";
// round1: i=0; candidate='(', charInLine=['('];
// round2: i=1; candidate=')', true, charInLine=[], result=true; 