JavaScript
===


[Learning JavaScript Design Patterns](https://addyosmani.com/resources/essentialjsdesignpatterns/book/)
---

* JavaScript Design Patterns
  * [Constructor Pattern](#constructor-pattern)
  * [Module Pattern](#the-module-pattern)
  * Revealing Module Pattern
  * [Singleton Pattern](#the-singleton-pattern)
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

#### Module Pattern

* public
* private

Example:
```javascript
var exampleModule = (function() {

  var counter = 0;

  return {
    incrementCounter: function() {
      return counter++;
    },

    resetCounter: function() {
      console.log( "counter value prior to reset: " + counter );
      this.counter = 0;
    }
  }
})();
//Usage:
// Increment our counter
exampleModule.incrementCounter();

// Check the counter value and reset
// Outputs: counter value prior to reset: 1
exampleModule.resetCounter();
```

#### The Singleton Pattern

* delay initialization

Example:  
```javascript  
var SingletonTester = (function () {
 
  // options: an object containing configuration options for the singleton
  // e.g var options = { name: "test", pointX: 5};
  function Singleton( options ) {
 
    // set options to the options supplied
    // or an empty object if none are provided
    options = options || {};
 
    // set some properties for our singleton
    this.name = "SingletonTester";
 
    this.pointX = options.pointX || 6;
 
    this.pointY = options.pointY || 10;
 
  }
 
  // our instance holder
  var instance;
 
  // an emulation of static variables and methods
  var _static = {
 
    name: "SingletonTester",
 
    // Method for getting an instance. It returns
    // a singleton instance of a singleton object
    getInstance: function( options ) {
      if( instance === undefined ) {
        instance = new Singleton( options );
      }
 
      return instance;
 
    }
  };
 
  return _static;
 
})();
 
var singletonTest = SingletonTester.getInstance({
  pointX: 5
});
 
// Log the output of pointX just to verify it is correct
// Outputs: 5
console.log( singletonTest.pointX );
```
