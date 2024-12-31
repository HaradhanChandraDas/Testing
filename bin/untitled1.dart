void main (){
  var student = {
    'Role' : 'Student',
    'name' : 'John Doe',
    'age' : 20,
    'Address' : '123 Main St',
  };

  student['Average'] = 89.0;

  print(student);

  addtwoinformation("Role :", "Student");
  addtwoinformation("Name :", "Jhone Doe");
  addtwoinformation("age :", '20');
  addtwoinformation("address :", "123 main st");

}

addtwoinformation (String x, String y){
  print(x+y);
}

//void main (){

