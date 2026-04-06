void main() {
 
  List<int> numbers = [1, 2, 3];
  print("Initial List: $numbers");

  numbers.add(4);
  numbers.addAll([5, 6]);
  print("After adding: $numbers");
  print("First element: ${numbers[0]}");

  numbers.remove(2);      
  numbers.removeAt(0);    
  print("After removing: $numbers");


  print("Length: ${numbers.length}");

  
  print("Contains 3? ${numbers.contains(3)}");

print("Loop:");
  for (var num in numbers) {
    print(num);
  }

var doubled = numbers.map((n) => n * 2).toList();
  print("Doubled: $doubled");

  var even = numbers.where((n) => n % 2 == 0).toList();
  print("Even numbers: $even");
  
  numbers.sort();
  print("Sorted: $numbers");
  var sum = numbers.reduce((a, b) => a + b);
  print("Sum: $sum");
  numbers.clear();
  print("After clear: $numbers");
}