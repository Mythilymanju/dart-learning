void main() {
  
  Map<String, dynamic> student = {
    "name": "John",
    "age": 20,
    "marks": 85
  };

  print("Initial Map: $student");
  print("Name: ${student["name"]}");
  print("Age: ${student["age"]}");

 
  student["city"] = "Chennai";
  print("After adding city: $student");

 
  student["marks"] = 90;
  print("After updating marks: $student");


  student.remove("age");
  print("After removing age: $student");


  print("Contains 'name'? ${student.containsKey("name")}");
  print("Contains value 90? ${student.containsValue(90)}");

  
  print("Keys: ${student.keys}");
  print("Values: ${student.values}");

 
  print("Loop:");
  student.forEach((key, value) {
    print("$key : $value");
  });


  print("Length: ${student.length}");

  student.clear();
  print("After clear: $student");
}