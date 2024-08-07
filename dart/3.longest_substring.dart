import 'dart:math';

//brute force
// int lengthOfLongestSubstring(String s) {
//   if (s.length == 1) return 1;
//   if (s.length == 0) return 0;
//   int maxLength = 0;
//   for (int i = 0; i < s.length; i++) {
//     String subString = "";
//     for (int j = i; j < s.length; j++) {
//       subString = subString + s[j];
//       if (hasUnique(subString)) {
//         maxLength = max(maxLength, subString.length);
//       }
//     }
//   }
//   return maxLength;
// }

//sliding window
int lengthOfLongestSubstring(String s) {
  if (s.isEmpty) return 0;
  if (s.length == 1) return 1;
  int maxLength = 0;
  int start = 0;
  int end = 0;
  Set chars = {};
  while (end < s.length) {
    if (!chars.contains(s[end])) {
      chars.add(s[end]);
      end++;
    } else {
      chars.remove(s[start]);
      start++;
    }
    maxLength = max(maxLength, chars.length);
  }
  return maxLength;
}

bool hasUnique(String s) {
  return s.split("").toSet().length == s.length;
}

void main() {
  print(lengthOfLongestSubstring("pwwkew"));
}
