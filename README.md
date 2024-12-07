# Null Safety Error in Dart Getter with Nullable Variable

This repository demonstrates a common null safety error in Dart when accessing a nullable variable without proper null checks. The getter returns a default value (0 in this case) if the variable is null, avoiding a runtime error. However, this approach can lead to unexpected behavior in some cases if the null value holds significance.

## Bug Description
The `MyClass` class has a nullable private variable `_myVariable`. The getter `myVariable` returns 0 if `_myVariable` is null, preventing a null safety error.  However, the setter allows assigning null which then leads to unexpected behavior or runtime errors if not properly handled throughout the code.

## Solution
The recommended solution is to use the null-aware operator (`?.`) or to explicitly check for null before accessing the variable.  Alternatively, you could use a more robust default value strategy depending on your application logic.  In this solution, we demonstrate the use of null aware operator and explicit null checks.