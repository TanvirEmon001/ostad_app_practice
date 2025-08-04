import 'dart:core';


void printFirstElementO1(List<String> items) {
  if (items.isNotEmpty) {
    // Accessing items[0] takes the same amount of time whether the list
    // has 1 element or 1 million elements.
    print("  O(1) - Accessing the first element: '${items[0]}'");
  } else {
    print("  O(1) - List is empty, no first element to access.");
  }
}

/// Demonstrates O(N) - Linear Time Complexity.
/// Iterating through all elements in a list is a linear time operation,
/// meaning the time taken grows proportionally with the number of elements (N).
void printAllElementsON(List<String> items) {
  if (items.isEmpty) {
    print("  O(N) - List is empty, no elements to iterate.");
    return;
  }
  print("  O(N) - Iterating through all elements:");
  // The 'for' loop will run N times, where N is the length of the list.
  for (int i = 0; i < items.length; i++) {
    print("    Element $i: '${items[i]}'");
  }
}

/// Demonstrates O(N^2) - Quadratic Time Complexity.
/// Using nested loops where each loop iterates over the elements results
/// in a quadratic time operation. The time taken grows quadratically
/// with the number of elements (N).
void printPairsONSquared(List<String> items) {
  if (items.length < 2) {
    print("  O(N^2) - Not enough elements (${items.length}) to form pairs.");
    return;
  }
  print("  O(N^2) - Generating all unique pairs:");
  // The outer loop runs N times.
  // The inner loop runs approximately N times for each iteration of the outer loop.
  // This results in roughly N * N operations.
  for (int i = 0; i < items.length; i++) {
    for (int j = i + 1; j < items.length; j++) {
      print("    Pair: ('${items[i]}', '${items[j]}')");
    }
  }
}

void main() {
  List<String> myFruits = ["Apple", "Banana", "Orange", "Mango"];
  List<String> shortList = ["Grape"]; // List with few elements
  List<String> emptyList = []; // Empty list

  print("--- Demonstrating Big O Notation in Dart ---");
  print("Big O notation describes the upper bound of the growth rate of an algorithm's runtime,");
  print("or space requirements, as the input size grows.");

  // --- O(1) Example ---
  print("\n=== 1. O(1) - Constant Time Complexity ===");
  print("   Operations that take the same amount of time regardless of input size.");
  print("   Example: Accessing an element by its index in a list.");
  print("   Input list: $myFruits");
  printFirstElementO1(myFruits);

  print("   Input list: $shortList");
  printFirstElementO1(shortList);

  print("   Input list: $emptyList");
  printFirstElementO1(emptyList);

  // --- O(N) Example ---
  print("\n=== 2. O(N) - Linear Time Complexity ===");
  print("   Operations whose runtime grows linearly with the input size (N).");
  print("   Example: Iterating through all elements in a list.");
  print("   Input list: $myFruits");
  printAllElementsON(myFruits);

  print("   Input list: $shortList");
  printAllElementsON(shortList);

  print("   Input list: $emptyList");
  printAllElementsON(emptyList);

  // --- O(N^2) Example ---
  print("\n=== 3. O(N^2) - Quadratic Time Complexity ===");
  print("   Operations whose runtime grows quadratically with the input size (N).");
  print("   Example: Nested loops iterating over the same list.");
  print("   Input list: $myFruits");
  printPairsONSquared(myFruits);

  print("   Input list: $shortList");
  printPairsONSquared(shortList);

  print("   Input list: $emptyList");
  printPairsONSquared(emptyList);
}