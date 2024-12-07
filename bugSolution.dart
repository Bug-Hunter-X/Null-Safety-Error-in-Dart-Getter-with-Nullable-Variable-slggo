```dart
class MyClass {
  int? _myVariable;

  MyClass(this._myVariable);

  int get myVariable => _myVariable ?? 0; //Safe default

  void set myVariable(int value) {
    _myVariable = value;
  }

  int? get myVariableSafe => _myVariable; //Use this if want to explicitly check
}

void main() {
  var obj = MyClass(null);
  print(obj.myVariable); // Output: 0
  print(obj.myVariableSafe ?? -1); //Explicitly handles the null case
  var obj2 = MyClass(5);
  print(obj2.myVariable); //Output: 5
  print(obj2.myVariableSafe ?? -1); //Output: 5
}
```