import 'package:linkedist/linkedist.dart';

void printRecursively<T>(Node<T>? node) {
  if (node == null) return;
  printRecursively(node.next);
  print(node.value);
}
void printListInReverse<E>(LinkedList<E> list) {
  printRecursively(list.head);
}
void main() {




}
