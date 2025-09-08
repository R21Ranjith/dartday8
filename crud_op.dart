void main() {
  // Initial List
  var fruits = ["Apple", "Banana", "Mango"];

  // CREATE (Add)
  fruits.add("Orange");
  fruits.insert(1, "Grapes"); 
  print("After Create: $fruits");

  // READ (Access)
  print("First Fruit: ${fruits[0]}");
  print("All Fruits: $fruits");

  // UPDATE (Modify)
  fruits[2] = "Pineapple"; 
  print("After Update: $fruits");

  // DELETE (Remove)
  fruits.remove("Banana"); 
  fruits.removeAt(0); 
  print("After Delete: $fruits");
}
