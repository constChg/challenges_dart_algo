class Solution {
  bool isAnagram(String s, String t) {
    Map<String, int> charMap = {};

    if (s.length != t.length) return false;

    for (var i = 0; i < s.length; i++) {
      String candidate = s[i];
      String checkcan = t[i];
      if (!charMap.containsKey(candidate)) {
        charMap[candidate] = 0;
      }
      ;

      if (!charMap.containsKey(checkcan)) {
        charMap[checkcan] = 0;
      }
      ;

      charMap[candidate] = charMap[candidate]! + 1;
      charMap[checkcan] = charMap[checkcan]! - 1;
    }
    ;

    for (var count in charMap.values) {
      if (count != 0) return false;
    }
    ;

    return true;
  }
}
