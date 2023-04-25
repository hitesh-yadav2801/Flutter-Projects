import 'dart:io';
void main() {
  //print("Starting");
  //stdout.write('Enter the name');
  //var name = stdin.readLineSync();
  //print("Welcome , $name");
  //var human = Human("rahul", 12);
  // print(human.age);
  // print(human.name);
  // human.printName();
  //print(human.add(65324, 67498734));
  // int? a;
  // a = 10;
  // print(a);
  // BigInt b = BigInt.parse('786787786768767857847855');
  // print(b);

  // var name = ["rahul", "a", "b", "c", 23, 4536, 45];
  // print(name);
  // name.insert(2, 45);
  // print(name);
  // print(name.hashCode);
  // print(name);
  // var list = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16];
  // print(list);
  // list.replaceRange(4, 8, [1,2,3,4]);
  // print("$list");
  // list.removeRange(0, list.length - 1);
  // print(list);
  // var map = {
  //   'k1' : 1,
  //   'k2' : 2,
  //   'k3' : 3,
  // };
  // print(map["k1"]);
  final names = [
    "a",
    "b",
    "c",
  ];
  //names = ["ab", "ac", "ac"];
  names.add("India");
  print(names);
}


class Human{
  // define the properties of the human class
   String name;
   int age;

   Human(this.name, this.age);

   void printName() {
     print("Raman");
   }
   void myFunction() {
     print("Hello ");
   }

   int add(int a, int b){
     int sum = a + b;
     //print(sum);
     return sum;
   }
}
