---
layout: page
title: Swift
header: Swift Style Guide
group: navigation
---
{% include JB/setup %}

Inspired by (and stolen shamelessly from) [github/swift-style-guide](https://github.com/github/swift-style-guide) and [The Official raywenderlich.com Swift Style Guide.](https://github.com/raywenderlich/swift-style-guide) (with some
personal bias thrown in for good measure).
Where the guide is silent, default to [Apple's Coding Guidelines for
Cocoa](https://developer.apple.com/library/ios/documentation/Cocoa/Conceptual/CodingGuidelines/CodingGuidelines.html) and [Swift Programming Guide](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/)


## Table of Contents

* [Organization](#organization)
* [Spacing](#spacing)
* [Syntax Choices](#syntax-choices)
* [Conditionals](#conditionals)
* [Naming](#naming)
* [Comments](#comments)
* [Types](#types)
* [Literals](#literals)
* [Constants](#constants)
* [Optionals](#optionals)
* [Booleans](#booleans)
* [Enumerated Types](#enumerated-types)
* [Miscellany](#miscellany)
* [Xcode Project](#xcode-project)

## Organization
* Use `// MARK:`s to categorize methods into functional groupings and protocol implementations, following this general structure:

    ```objc
    #MARK: initialize

    + (id)objectWithThing:(id)thing
    ...
    - (id)init
    ...

    #MARK: drawing

    - (void)drawRect:(CGRect)
    ...

    #MARK: public

    - (void)someOverriddenMethod
    ...

    #MARK: private

    - (id)copyWithZone:(NSZone *)zone
    ...



* There should be exactly one blank line between methods to aid in visual clarity and organization. Whitespace within methods should separate functionality, but often there should probably be new methods.

## Spacing

* Indent using 4 spaces. Do not indent with tabs. Be sure to set this preference in Xcode.
* Never use spaces between parentheses and their contents.

* Method braces and other braces (if/else/switch/while etc.) always open on the same line as the statement but close on a new line.
	
	```
	// bad
	if user.isHappy
	{
	    //Do something
	}
	else {
	    //Do something else
	}
		
	// good
	if user.isHappy {
	  //Do something
	} else {
	  //Do something else
	}

	```

* There should be exactly one blank line between methods to aid in visual clarity and organization. Whitespace within methods should separate functionality, but having too many sections in a method often means you should refactor into several methods.

* Separate binary operands with a single space, but unary operands and casts with none.

    ```
    // bad
    NewType a = (NewType) b;

    for (int i=0; i<10; i ++) {
        doCoolThings();
    }

    // good
    NewType a = (NewType)b;

    for (int i = 0; i < 10; i++) {
        doCoolThings();
    }
    ```


* Other braces (`if`/`else`/`switch`/`while` etc.) always open on the same line as the statement (preceded by a space) but close on a new line. `else` occupies the same line as the `if`'s closing brace.

    ```
    // bad
    if (user.isHappy){
        ...
    }
    else
    {
        ...
    }

    // also bad
    if (user.isHappy)
    {
        ...
    }
    else { ... }

    // good
    if (user.isHappy) {
        ...
    } else {
        ...
    }
    ```

## Syntax Choices

* Dot-notation should always be used for accessing and mutating properties.


## Conditionals

* Conditional bodies are required to use braces even when the body is written on a single line in Swift.

* The ternary operator `?` should only be used when it increases clarity or code neatness. A single condition is usually all that should be evaluated. Evaluating multiple conditions is usually more understandable as an if statement, or refactored into instance variables. The condition of a ternary expression should be enclosed in parentheses for clarity.

    ```
    // bad
    result = a > b ? x = c > d ? c : d : y

    // good
    result = (a > b) ? x : y
    ```

## Naming

* Long, descriptive method names are good.
* Variables should be named as descriptively as possible. Single letter variable names should be avoided except in `for` loops.
* Apple naming conventions should be adhered to wherever possible (camelCase for variables, method names, and method name segments, CamelCase with an initial capital for class names, constant variables, and enumerated types).

## Comments

* Comments should be used to explain **why** a particular piece of code does something, not **what** it does. Comments must be kept up-to-date or deleted.

* Avoid block comments inline with code, as the code should be as self-documenting as possible. Exception: This does not apply to those comments used to generate documentation.
* Syntax as below supports quick help in xcode when placed before a class or method name:

	```
	/** comment */
	```

## Types

* Always use Swift's native types when available. Swift offers bridging to Objective-C so you can still use the full set of methods as needed.

	```
	// bad

	let width: NSNumber = 120.0                                 // NSNumber
	let widthString: NSString = width.stringValue               // NSString
	
	// good

	let width = 120.0                                    // Double
	let widthString = (width as NSNumber).stringValue    // String
	```

* When specifying the type of an identifier, always put the colon immediately after the identifier, followed by a space and then the type name.

	```
	class SmallBatchSustainableFairtrade: Coffee { ... }

	let timeToCoffee: NSTimeInterval = 2

	func makeCoffee(type: CoffeeType) -> Coffee { ... }
	```
* Rationale: The type specifier is saying something about the identifier so it should be positioned with it.

* Only explicitly refer to self when required

* When accessing properties or methods on self, leave the reference to self implicit by default:
	
	```
	private class History {
    	var events: [Event]

   	 	func rewrite() {
        	events = []
    	}
	}
	
	```
	
### Only include the explicit keyword when required by the language—
* for example, in a closure, or when parameter names conflict:

	```
extension History {
    init(events: [Event]) {
        self.events = events
    }

    var whenVictorious: () -> () {
        return {
            self.rewrite()
        }
    }
}
```
Rationale: This makes the capturing semantics of self stand out more in closures, and avoids verbosity elsewhere.

## Prefer implicit getters on read-only properties and subscripts

* When possible, omit the get keyword on read-only computed properties and read-only subscripts.

	So, write these:

	```	
	var myGreatProperty: Int {
   	  return 4
	}

	subscript(index: Int) -> T {
	    return objects[index]
	}
	```
	
	… not these:

	```
	var myGreatProperty: Int {
	    get {
	        return 4
	    }
	}
	
	subscript(index: Int) -> T {
	    get {
	        return objects[index]
	    }
	}
	```
	
	Rationale: The intent and meaning of the first version is clear, and results in less code.

## Always specify access control explicitly for top-level definitions

* Top-level functions, types, and variables should always have explicit access control specifiers:

	```
	public var whoopsGlobalState: Int
	internal struct TheFez {}
	private func doTheThings(things: [Thing]) {}
	```

	However, definitions within those can leave access control implicit, where appropriate:

	```
	internal struct TheFez {
	    var owner: Person = Joshaber()
	}
	```
	
	Rationale: It's rarely appropriate for top-level definitions to be specifically internal, and being explicit ensures that careful thought goes into that decision. Within a definition, reusing the same access control specifier is just duplicative, and the default is usually reasonable.

## Constants

* Constants are preferred over in-line string literals or numbers. Constants are defined using the let keyword, and variables with the var keyword. Any value that is a constant must be defined appropriately, using the let keyword. As a result, you will likely find yourself using let far more than var.

	Tip: One technique that might help meet this standard is to define everything as a constant and only change it to a variable when the compiler complains!

## Optionals

* Declare variables and function return types as optional with ? where a nil value is acceptable.

* Use implicitly unwrapped types declared with ! only for instance variables that you know will be initialized later before use, such as subviews that will be set up in viewDidLoad.

* When accessing an optional value, use optional chaining if the value is only accessed once or if there are many optionals in the chain:

	```
	myOptional?.anotherOne?.optionalView?.setNeedsDisplay()
	Use optional binding when it's more convenient to unwrap once and perform multiple operations:

	if let view = self.optionalView {
  	// do many things with view
	}
	```
	
## Booleans

* Use the camelcase `Bool` to indicate boolean types.
* Swift requires explicit comparison to `nil` to resolve to `false`.

    ```
    // required
    if (someObject == nil) ...
    ```

## Enumerated Types

* The Enum in swift has additional capabilities so enums can have methods and switches on them must be exhaustive

    ```
    enum MenuControllerEndpoint {
    	case ItemMenu
    	case MainContentMenu
    }
    ```

## Prefer structs over classes

* Unless you require functionality that can only be provided by a class (like identity or deinitializers), implement a struct instead.

* Note that inheritance is (by itself) usually not a good reason to use classes, because polymorphism can be provided by protocols, and implementation reuse can be provided through composition.

* For example, this class hierarchy:

	```
	class Vehicle {
	    let numberOfWheels: Int
	
	    init(numberOfWheels: Int) {
	        self.numberOfWheels = numberOfWheels;
	    }
	
	    func maximumTotalTirePressure(pressurePerWheel: Float) -> Float {
	        return pressurePerWheel * numberOfWheels
	    }
	}
	
	class Bicycle: Vehicle {
	    init() {
	        super.init(numberOfWheels: 2)
	    }
	}
	
	class Car: Vehicle {
	    init() {
	        super.init(numberOfWheels: 4)
	    }
	}
	```
	
	could be refactored into these definitions:
	
	```
	protocol Vehicle {
	    var numberOfWheels: Int { get }
	}
	
	func maximumTotalTirePressure(vehicle: Vehicle, pressurePerWheel: Float) -> Float {
	    return pressurePerWheel * vehicle.numberOfWheels
	}
	
	struct Bicycle: Vehicle {
	    let numberOfWheels = 2
	}
	
	struct Car: Vehicle {
	    let numberOfWheels = 4
	}
	```
	
	Rationale: Value types are simpler, easier to reason about, and behave as expected with the let keyword.
  
## Miscellany

* Don't commit code that will never execute; just delete it. You probably won't ever want it back, and if you do, you'll likely want to rewrite it anyway. And you can always retrieve it from an earlier commit if you have to. This applies to:
   * Methods that are never called
   * Commented-out code
   * Code protected by impossible `if` or `switch` statements
* Don't commit code that serves no purpose. This applies to:
   * Code automatically generated by Xcode that does nothing except call `super`
   * Empty conditional bodies (`if (foo) { }` or `else { }`)

## Xcode Project

* The filesystem directories should be kept in sync with the Xcode file groups.
* Files within groups should be kept alphabetized (case-insensitively, with groups before files).
* A GitHub Xcode project repository should follow this structure:
   * base folder (contains Gemfile, Podfile, lock files, .rvmrc, other non-Xcode configuration files as necessary)
      * `Pods/` (if using CocoaPods)
      * `ProjectName/`
      * `ProjectNameTests/`
      * `ProjectName.xcodeproj/`
      * `ProjectName.xcodeworkspace/` (if using CocoaPods)
* There should be no files directly within an Xcode ProjectName directory. The subfolders (and corresponding groups) should follow this structure:
   * `Models/`
      * `Editable/` (if using mogenerator)
      * `Generated/` (if using mogenerator)
      * `ProjectName.xcdatamodeld` (if using Core Data)
   * `Views/` (contains `.xib`s, and UI subclasses within a folder structure that mirrors the app navigation)   
   * `Storyboards/` (contains `.storyboards`s)
   * `Controllers/` (contains view controllers within a folder structure that mirrors the app navigation)
   * `Base.lproj/` (if using localized strings)
   * `Shared/`
      * `Views/` (contains `.xib`s and UI subclasses used throughout the app)
      * `Controllers/` (contains view controllers used or subclassed throughout the app)
      * `Utilities/` (contains utility classes and singletons)
   * `Resources/`
      * `Fonts/`
      * `Images/` (contains some sort of internal folder structure and uses sane naming conventions)
      * `Images.xcassets`
      * `Strings/` (contains plists for localized strings)
   * `Supporting Files/` (AppDelegate, InfoPlist, ProjectName-Info.plist, ProjectName-Prefix.pch, bridging-headers)
* When possible, always turn on "Treat Warnings as Errors" in the target's Build Settings and enable as many [additional warnings](http://boredzo.org/blog/archives/2009-11-07/warnings) as possible. If you need to ignore a specific warning, use [Clang's pragma feature](http://clang.llvm.org/docs/UsersManual.html#controlling-diagnostics-via-pragmas).
