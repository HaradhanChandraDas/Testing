String getStudentInfo(
    String role, String name, int age, String address, double averageScore) {
  return '''Student Information:

Role: $role
Name: $name
Age: $age
Address: $address
Average Score: $averageScore''';
}

void main() {
  // Call the function and print the result
  String info = getStudentInfo('Student', 'John Doe', 20, '123 Main St', 89.0);
  print(info);
}
