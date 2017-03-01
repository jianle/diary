JavaScript
===


[Learning JavaScript Design Patterns](https://addyosmani.com/resources/essentialjsdesignpatterns/book/)
---

* JavaScript Design Patterns
  * [Constructor Pattern](#constructor-pattern)
  * [Module Pattern](#the-module-pattern)
  * Revealing Module Pattern
  * Singleton Pattern
  * Observer Pattern
  * Mediator Pattern
  * Prototype Pattern
  * Command Pattern
  * Facade Pattern
  * Factory Pattern
  * Mixin Pattern
  * Decorator Pattern
  * Flyweight Pattern


## Constructor Pattern

#### Object Creation
* Dot syntax
* Square bracket syntax
* Object.defineProperty ( ECMAScript 5 only compatible approaches )  
```javascript  
var newObject = {};
// or
var newObject = Object.create( Object.prototype );
// or
var newObject = new Object();
Object.defineProperty( newObject, "someKey", {
    value: "for more control of the property's behavior",
    writable: true,
    enumerable: true,
    configurable: true
});
```
#### Basic Constructor

a basic constructor may look as follows:
```javascript
function Car(model, year, miles) {
  this.model = model;
  this.year = year;
  this.miles = miles;
  this.toString = function() {
    return this.model + " has done " + this.miles + " miles.";
  }
}
var civic = new Car( "Honda Civic", 2009, 20000 );
```

## The Module Pattern

* AMD modules
* CommonJS modules
* ECMAScript Harmony modules

####  Object Literals   
```javascript
var myObjectLiteral = {
  variableKey: variableValue,
  functionKey: function() {
    // ...
  }
}
```
