import 'package:stack/stack.dart' as stack;
import 'package:stack/stack.dart';


// Challenge 1:
void reverseList<E>(List<E> list) {

  final stack = Stack<E>();

  for (E element in list) {
    stack.push(element);
  }

  while (stack.isNotEmpty) {
    print(stack.pop());
  }
}

// Challenge 2:
bool checkParentheses(String text) {
  final stack = Stack<int>();

  final open = '('.codeUnitAt(0);
  final close = ')'.codeUnitAt(0);

  for (int codeUnit in text.codeUnits) {
    if (codeUnit == open) {
      stack.push(codeUnit);
    } else if (codeUnit == close) {
      if (stack.isEmpty) {
        return false;
      } else {
        stack.pop();
      }
    }
  }
  return stack.isEmpty;
}

void main() {
   List list = [1, 2, 3, 4, 5];
  reverseList(list);

   String exampleString = 'h((e))llo(world)()';
   bool result = checkParentheses(exampleString);
   print(result);

 
}
