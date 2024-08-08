Map<String, int> romanValues = {
  "I": 1,
  "V": 5,
  "X": 10,
  "L": 50,
  "C": 100,
  "D": 500,
  "M": 1000
};
//1
// int romanToInt(String s) {
//   int total = 0;
//   String lastAdded = "";
//   for (int i = 0; i < s.length; i++) {
//     int? lastAddedValue = romanValues[lastAdded];
//     int currentValue = romanValues[s[i]]!;
//     if (lastAdded.isNotEmpty && (lastAddedValue! < currentValue)) {
//       total += currentValue;
//       total -= (lastAddedValue * 2);
//     } else {
//       total += currentValue;
//     }
//     lastAdded = s[i];
//   }
//   return total;
// }

//2

int romanToInt(String s) {
  int total = 0;
  for (int i = 0; i < s.length; i++) {
    int currentValue = romanValues[s[i]]!;
    if (i != s.length - 1 && currentValue < romanValues[s[i + 1]]!) {
      total -= currentValue;
    } else {
      total += currentValue;
    }
  }
  return total;
}

void main() {
  print(romanToInt("MCMXCIV"));
}
