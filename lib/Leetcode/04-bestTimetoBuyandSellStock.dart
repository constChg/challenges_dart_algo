class Solution {
  int maxProfit(List<int> prices) {
    var result = 0;
    var smallestVal = prices[0];
    var potentialProfit = 0;

    for (var i = 0; i < prices.length - 1; i++) {
      var currentVal = prices[i];
      var nextVal = prices[i + 1];

      if (currentVal < smallestVal) {
        smallestVal = currentVal;
      }
      potentialProfit = nextVal - smallestVal;
      if (potentialProfit > result) {
        result = potentialProfit;
      }
    }

    return result;
  }
}
