// Define an abstract class Role
abstract class Role {
  void displayRole();  // Abstract method that will be implemented by subclasses
}

// Student class implements Role
class Student implements Role {
  String name;
  int age;
  String address;
  String studentID;
  List<int> courseScores;
  double averageScore;


  // Constructor to initialize the attributes
  Student({
    required this.name,
    required this.age,
    required this.address,
    required this.studentID,
    required this.courseScores,
  }) : averageScore = 0.0;

  // Getter methods
  String get getName => name;
  int get getAge => age;
  String get getAddress => address;
  String get getStudentID => studentID;

  // Method to calculate average score
  void calculateAverage() {
    if (courseScores.isNotEmpty) {
      averageScore = courseScores.reduce((a, b) => a + b) / courseScores.length;
    }
  }

  // Override displayRole method
  @override
  void displayRole() {
    print('Student Information:\n');
    print('Role: Student');
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    calculateAverage();
    print('Average Score: $averageScore');
  }
}

// Teacher class implements Role
class Teacher implements Role {
  String name;
  int age;
  String address;
  String teacherID;
  List<String> coursesTaught;

  // Constructor to initialize the attributes
  Teacher({
    required this.name,
    required this.age,
    required this.address,
    required this.teacherID,
    required this.coursesTaught,
  });

  // Getter methods
  String get getName => name;
  int get getAge => age;
  String get getAddress => address;
  String get getTeacherID => teacherID;

  // Method to display courses taught by the teacher
  void displayCoursesTaught() {
    print('Courses Taught:');
    for (var course in coursesTaught) {
      print('- $course');
    }
  }

  // Override displayRole method
  @override
  void displayRole() {
    print('Teacher Information:\n');
    print('Role: Teacher');
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    displayCoursesTaught();
  }
}

void main() {
  // Create a Student object and display information
  var StudentObj = Student(
    name: 'John Doe',
    age: 20,
    address: '123 Main St',
    studentID: 'S12345',
    courseScores: [90, 85, 82],
  );
  StudentObj.displayRole();

  print("");

  // Create a Teacher object and display information
   var teacherObj = Teacher(
    name: 'Mrs. Smith',
    age: 35,
    address: '456 Oak St',
    teacherID: 'T98765',
    coursesTaught: ['Math', 'English', 'Bangla'],
  );
  teacherObj.displayRole();
}
