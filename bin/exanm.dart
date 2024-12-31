void displayStudentInfo(Map<String, dynamic> student) {
  // Calculate average score
  List<int> scores = student['scores'];
  double averageScore = scores.reduce((a, b) => a + b) / scores.length;

  // Display student information
  print("Student Information:");
  print("Role: Student");
  print("Name: ${student['name']}");
  print("Age: ${student['age']}");
  print("Address: ${student['address']}");
  print("Average Score: ${averageScore.toStringAsFixed(1)}");
}

void main() {
  // Using a map to store the student details
  var student = {
    'name': 'John Doe',
    'age': 20,
    'address': '123 Main St',
    'scores': [90, 85, 82]
  };

  // Call the function to display information
  displayStudentInfo(student);
}
