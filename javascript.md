---
layout: page
title: JavaScript
header: JavaScript Style Guide
group: navigation
---
{% include JB/setup %}

## Introduction

This style guide serves as a way to standardize JavaScript code we write at Punch Through Design.

If you can't find an answer in here, use your best judgement and keep things readable. Strive for terse, readable code.

## Semicolons

**Don't use them.** ASI takes care of 99.9995% of cases where a semicolon is required.

The only edge case is when a new line starts with a left (open) parenthesis '('. And the only reason to start a new line with an open paren is to wrap a file in a self executing function to create a closure. If you have to start a line with an open paren for any other reason, you're doing it wrong.

## Code Layout

Use two **spaces** per indentation level. No hard tabs.

### What to Indent

* Contents of a block
* Contents of a multiline object literal
* Contents of a multiline array literal

### Line Length

Try and stay under 80 characters per line. Don't break up expressions within an if statement whenever possible.

## Naming

Don't use single letter variable names if you can avoid it. It's not necessary to be overly descriptive either.

A single letter name in the scope of a very small function probably isn't a big deal. Nor is using i for an iterator. *Just don't be a bad programmer and everything will be fine.*

Variables and functions use lower camel case: `thisIsLowerCamelCase`

Constructors use upper camel case (Pascal case): `ThisIsUpperCamelCase`

**Do not** use underscores whenever possible.

## Variable Declarations

Use multiple var statements to declare multiple variables.

**Preferred:**

```javascript
var pointX = 2
var pointY = 4
var pointZ = 0
```

**Not Preferred:**

```javascript
var pointX = 2,
    pointY = 4,
    pointZ = 0
```

```javascript
var pointX = 2, pointY = 4, pointZ = 0
```

## Block Style

### Conditional Blocks

Conditional blocks should be formatted with a "cuddled" `else`:

**Preferred:**

```javascript
if (x == y) {
  doSomething(x)
  callMethod()
  x += y
  y = 0
  doSomethingElse(y)
} else {
  callMethod2()
  x++
  someMethod()
}
```

It's OK to write single line if statements with or without braces.

**Preferred:**

```javascript
if (a == b) return c
```

```javascript
if (a == b) { return c }
```

**Do not** write multi line if statements without braces. [Read more on why here](objective-c.html#conditionals).

**Preferred:**

```javascript
if (x == y) {
  return x
} else {
  return y
}
```

**Not Preferred:**

```javascript
if (x == y)
  return x
else
  return y
```

### Switch/Case Statements

Be mindful in the use of `switch` at all.

`switch` statements in JavaScript, C, and other languages (excluding Ruby) exhibit behavior akin to [goto statements](http://en.wikipedia.org/wiki/Goto) due to their fallthrough nature. This goes against principles of [structured programming](http://en.wikipedia.org/wiki/Structured_programming). There is always a different control structure which will do the job.

**Unless it is blatantly obvious to use `switch`, use an alternative such as an if statement.**

Read [Dijkstra's paper](https://files.ifi.uzh.ch/rerg/arvo/courses/kvse/uebungen/Dijkstra_Goto.pdf) on goto and structured programming if you're curious about this topic.

-----

All `switch` statement cases must end with `break`, `throw`, `return`, or a comment indicating a fall-through.

**Preferred:**

```javascript
switch(value) {
  case 1:
    doSomething();
    // falls through

  case 2:
    doSomethingElse();
    break;

  default:
    doDefaultThing();
    break;
}
```

**Not Preferred:**

```javascript
switch(value) {
  case 1:
    doSomething();

  case 2:
    doSomethingElse();
    break;

  default:
    doDefaultThing();
}
```

## Comments

Block comments should only be used as a banner for a file, or as documentation of a function.

Function documentation should be well formatted for automatic parsing and generation of documentation. One blank space should be inserted between the block comment and the prior function, as well as between the block comment and the function it is describing.

The golden rule: **Code says how, comments say why.**

* Code should be written in a way that makes it easy for another programer to understand how it works.
* Comments should describe why the code does what it does, not serve as a line-by-line rundown of what the code does.

### Format of Block Comments

```javascript
/**
 * Description of the method
 *
 * @param {Type} paramName
 * @param {Type} paramName2
 * @return {Type}
 * @api public|private
 */

function doStuff(paramName, paramName2) {
  ...
  return something
}
```

### Examples of Block Comments

```javascript
/**
 * Squares the given number
 *
 * @param {Number} number
 * @return {Number}
 * @api public
 */
 ```

```javascript
function square(number) {
  return number * number
}
```

```javascript
/**
 * Cleans up any long-lived resources
 *
 * @api private
 */

function cleanUp() {
  ...
}
```

Single line comments should appear as documentation within methods and around larger blocks of code.

When writing single line comments, remember the golden rule: **Code says how, comments say why.**

```javascript
function foo(number) {
  // We need to baz the frobbed number because of RFC 4200, Proper Fooing with Bazzed Frob
  // Baz is provided by the baz library (node-baz)
  return bazManager.baz(number.frobbed())
}
```

### Whitespace

#### Named Functions

* Space after `function`.
* No space between the method name and opening paren.
* One space after each comma in the signature.
* One space after the closing paren.

**Preferred:**

```javascript
function methodName(param1, param2) {
  ...
}
```

#### Anonymous functions

* No space between function and opening paren.
* One space after each comma in the signature.
* One space after the closing paren.

**Preferred:**

```javascript
function(param1, param2) {
  ...
}
```

#### Operators

Use one space on either side of the operator except for increment, decrement, bitwise not and logical not.

**Operators wrapped in spaces:**

```javascript
x = 1
x == 1
x > 1
x + 1
x % 2
x + 3
x && y
x || y
x | 0
```

**Operators without spaces:**

```javascript
x++
x--
~x
!x
```

**Example:**

```javascript
x == 4 ? x++ : x--
```

**Exceptions:** When converting a type (Date to String, for example) the addition operator is often used as a shortcut. It is permissible to omit the space between the operator and operand in this case. Example:

```javascript
var msSinceEpoch = +new Date
```

## Object Literals

### The Basics

New empty object literals should be instantiated with `{}` instead of `new Object()`

With data, place a space after the opening brace, before the ending brace, and after each comma. Keep a space after the colon.

Remember the golden rule: **Let your code breathe.**

**Preferred:**

```javascript
var myObj = { name: 'John', city: 'Minneapolis' }
```

### Long Literals

If the declaration runs over 80 characters, or contains an anonymous function declaration, it is best to break the statement up into multiple lines. Line breaks should appear after the opening brace, after each comma and before the closing brace. The content of the object literal should be indented two spaces and the closing brace should not be indented.

**Preferred:**

```javascript
var myObj = {
  firstname: 'John',
  lastname: 'Doe',
  city: 'Minneapolis',
  url: 'http://tstmedia.com'
}
```

### Prototypes and Function Containers

A newline should precede each function property if the object is a definition for a class prototype or contains several function properties.

**Preferred:**

```javascript
var Person.prototype = {

  walk: function(speed) {
    ...
  },

  talk: function(phrase) {
    ...
  }
}
```

## Array Literals

### The Basics

New empty array literals should be instantiated with `[]` instead of `new Array()`.

Place a space after the opening bracket, before the closing bracket, and after each comma.

**Preferred:**

```javascript
var myArr = [ 5, 4, 5, 6, 7, 1 ]
```

### Long Literals

If the declaration runs over 80 characters or contains anonymous functions, it is best to break the statement up into multiple lines. Line breaks should appear after the opening bracket, after each comma, and before the closing bracket. The array content should be indented two spaces and the closing bracket should not be indented.

**Preferred:**

```javascript
var whitelist = [
  'teamID',
  'name',
  'abbreviation',
  'color1',
  'color2'
]
```

## Credits

This guide is based on the [Sport Ngin JavaScript Style Guide](http://sportngin.github.io/styleguide/javascript.html). Thanks for all your hard work!
