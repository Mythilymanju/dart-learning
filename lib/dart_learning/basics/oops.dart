//class/object
class Person{
 String name="Mythily";
 void sayhello(){
  print("My name is $name");
 }
}
void main(){
  Person p=Person();
  p.sayhello();
}
//constructor

class Student{
  String name;
  int mark;
  Student(this.name,this.mark);
  void showResults(){
    print("Name:$name");
    print("Mark:$mark");
  }
}
void main(){
  Student s1=Student("Mythily",67);
   Student s2=Student("Manju",97);
  s1.showResults();
  s2.showResults();
}
//Encapsulation
class BankAccount {
  double _balance = 0; // 

 
  void deposit(double amount) {
    _balance += amount;
    print("Deposited: $amount");
  }

 
  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print("Withdrawn: $amount");
    } else {
      print("Insufficient balance");
    }
  }

 
  double getBalance() {
    return _balance;
  }
}

void main() {
  BankAccount acc = BankAccount();

  acc.deposit(1000);
  acc.withdraw(400);
  acc.withdraw(700); 

  print("Current Balance: ${acc.getBalance()}");
}
//Inheritance

class Animal {
  void eat() {
    print("Animal is eating");
  }
}

class Dog extends Animal {
  void bark() {
    print("Dog is barking");
  }
}

void main() {
  Dog d = Dog();

  d.eat();   
  d.bark();  

//polymorphism

class Animal {
  void sound() {
    print("Animal makes sound");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("Cat meows");
  }
}

void main() {
  Dog d = Dog();
  Cat c = Cat();

  d.sound();
  c.sound();
}
//Abstration

abstract class Payment {
  void pay(double amount); 
}


class CreditCard extends Payment {
  @override
  void pay(double amount) {
    print("Paid ₹$amount using Credit Card");
  }
}


class UPI extends Payment {
  @override
  void pay(double amount) {
    print("Paid ₹$amount using UPI");
  }
}


void main() {
  Payment p;

  p = CreditCard();
  p.pay(1000);

  p = UPI();
  p.pay(500);
}

// Interface
class Payment {
  void pay(double amount) {}
}


class GooglePay implements Payment {
  @override
  void pay(double amount) {
    print("Paid ₹$amount using Google Pay");
  }
}

class PhonePe implements Payment {
  @override
  void pay(double amount) {
    print("Paid ₹$amount using PhonePe");
  }
}

void main() {
  Payment p;

  p = GooglePay();
  p.pay(300);

  p = PhonePe();
  p.pay(700);
}