BigInt square(final int n) {
  if (n < 1 || n > 64) {
    throw ArgumentError('square must be between 1 and 64');
  }

  BigInt result = BigInt.from(1);
  for (int i = 1; i < n; i++) {
    result *= BigInt.from(2);
  }
  return result;
}

BigInt total() {
  return geometricSum(64);
}

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  Alternative solution using geometric sum formula:
 *  S = a(1 - r^n) / (1 - r)
 * 
 * This solution ignores the first term (1)
 * and continues to the second term
 * because the sqaure formula only calulates the 64th term, 
 * which is 2^63, and the total is the sum of all terms from 1 to 64.
 * It is necessary to set a = 2, n = 63, and add 1 
 * to get the correct total
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
BigInt geometricSum(final int n) {
  BigInt one = BigInt.from(1), two = BigInt.from(2);
  BigInt result = two * (one - square(n)) ~/ (one - two) + one;
  print(result);
  return result;
}
