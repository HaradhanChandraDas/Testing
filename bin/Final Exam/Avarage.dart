void main() {
  // Scores
  List<int> scores = [90, 85, 82];

  // Variable to hold sum
  int sum = 0;

  // Using while loop to calculate sum
  int i = 0;
  while (i < scores.length) {
    sum += scores[i];
    i++;
  }

  // Calculate the average
  double average = sum / scores.length;

  // Print the result
  print("Rahim's average score is: $average");
}
