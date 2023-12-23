class Node<T> {
  Node({required this.value, this.next});
  T value;
  Node<T>? next;

  @override
String toString() {
  if (next == null) return '$value';
  return '$value -> ${next.toString()}';
}

}
class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  LinkedList(int i);

  bool get isEmpty => head == null;
  get next => null;
  get data => null;
  Object? get value => null;

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }

  void push(E value) {
  head = Node(value: value, next: head);
  tail ??= head;
}

E? pop() {
  final value = head?.value;
  head = head?.next;
  if (isEmpty) {
    tail = null;
  }
  return value;
}


  /////////////
   void printInRevers() {
    if (next == null) {
      print('$value');
      return;
    }
    next?.printInRevers();
    print('$value');
  }
////////////////////////
 Node<E>? findMiddleNode() {
    if (head == null) {
      // Empty list
      return null;
    }

    Node<E>? slowPointer = head;
    Node<E>? fastPointer = head;

    while (fastPointer != null && fastPointer.next != null) {
      // move slow pointer one step at a time
      slowPointer = slowPointer!.next;
      //move fast pointer two steps at a time
      fastPointer = fastPointer.next!.next;
    }
    //slowPointer is at the middle of the list
    return slowPointer;
  }
////////////////////////
  void removeAllOccurrences(E startValue) {
    Node<E>? current = head;
    Node<E>? prev = null;

    while (current != null) {
      if (current.value == startValue) {
        if (prev == null) {
          // If the target is at the head of the list
          head = current.next;
          if (head == null) {
            tail = null;
          }
        } else {
          prev.next = current.next;
          if (current.next == null) {
            tail = prev;
          }
        }
      } else {
        prev = current;
      }

      current = current.next;
    }
  }

}

