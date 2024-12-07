```dart
class MyClass {
  int? _myVariable;

  MyClass(this._myVariable);

  int get myVariable => _myVariable ?? 0; // This will cause error if not handled

  void set myVariable(int value) {
    _myVariable = value;
  }
}

void main() {
  var obj = MyClass(null);
  print(obj.myVariable); // This will cause error if not handled
}
```