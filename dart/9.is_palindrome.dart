bool isPalindrome(int x) {
  if (x < 0) return false;
  if (x >= 0 && x < 9) return true;
  return x == reverse(x);
}

int reverse(int num) {
  int rev = 0;
  int x = num;
  while (x > 0) {
    rev = (rev * 10) + x % 10;
    x = x ~/ 10;
  }
  return rev;
}

void main(List<String> args) {
  print(isPalindrome(-121));
}
