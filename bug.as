The following ActionScript 3 code attempts to access a property of a null object, resulting in a runtime error:

```actionscript
// ... some code
var myObject:MyObject = getMyObject();
var value:String = myObject.someProperty;
// ... more code
```

The problem is that `getMyObject()` might return `null` under certain conditions.  If this happens, accessing `myObject.someProperty` will throw a `NullPointerException`. This error is often subtle because it doesn't occur consistently, only when the specific condition is met that causes `getMyObject()` to return null.