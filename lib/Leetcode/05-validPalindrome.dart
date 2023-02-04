class Solution {
  bool isPalindrome(String s) {
    List<bool> listResult = [];
    String pureString = s
        .replaceAll(RegExp(r'[\W\_]'), '')
        .toLowerCase()
        .replaceAll(RegExp(' '), '');
    int pureStringLength = pureString.length;
    print(pureString);

    if (s.isEmpty || pureStringLength < 2) {
      listResult.add(true);
    }

    if (pureStringLength > 1) {
      int numOfTest = (pureStringLength / 2).toInt();
      for (var i = 0; i <= numOfTest; i++) {
        if (pureString[i] == pureString[pureStringLength - 1 - i]) {
          listResult.add(true);
        }
        if (pureString[i] != pureString[pureStringLength - 1 - i]) {
          listResult.add(false);
        }
      }
    }

    return !listResult.contains(false);
  }
}
