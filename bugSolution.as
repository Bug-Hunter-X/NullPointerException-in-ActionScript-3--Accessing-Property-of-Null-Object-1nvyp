The solution is to add a null check before accessing the property:

```actionscript
// ... some code
var myObject:MyObject = getMyObject();
if (myObject != null) {
  var value:String = myObject.someProperty;
} else {
  // Handle the case where myObject is null
  trace("myObject is null");
  var value:String = ""; // or some default value
}
// ... more code
```

This code first checks if `myObject` is null. If it is, the code enters the `else` block and handles the situation appropriately—in this case, by setting a default value for `value`.  Alternatively, you could throw an error, or take other action based on your application's needs.