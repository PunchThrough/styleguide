---
layout: page
title: SCSS
header: SCSS Styleguide
group: navigation
---
{% include JB/setup %}

# Basic Principles

* **DO** ask for help if you need it.
* **DO** learn about [SCSS](http://sass-lang.com/).
* **DO** learn about [OOCSS](http://oocss.org/).
* **DO** separate structure from style.
* **DO** leverage existing classes as much as possible.
* **DO** leverage rules applied to HTML as much as possible.
* **DO** write as small a selector as possible.
* **DO** avoid specificity hell.
* **DO** minimize a class's footprint as much as possible.
* **DO** write classes in such a way that they can be overriden easily.
* **DO** write classes that *augment* elements and classes.
* **DO** have an opinionated default for every class you create.
* **DO** design your classes so they can be combined on an element—such as a structural class and a stylistic class.
* **DO NOT** use id's.
* **DO NOT** write classes that override existing classes.
* **DO NOT** style HTML tags, unless they're scoped within a class.
* **DO NOT** use `!important`.


## A note on <strike>hypocrisy</strike> abstraction

I have two conflicting rules above:

* **DO** write classes in such a way that they can be overriden easily.
* **DO NOT** write classes that override existing classes.

The basic principle is defensive design. It should be *possible* to override a rule in a class within a deeper context through a minimum amount of effort. However, if you find yourself needing to do that it's a sign you should refactor your classes.

Perhaps you have one class doing two things, if so split the concerns of the class and create another one. Perhaps we're doing something stupid with our design and need to rethink it. Whatever the reason, each class should be responsible for only a discreet aspect of our designs, and other classes should respect that.

## Specificity Hell

In the past, while managing our *massive* CMS, there came a common need to make an element look a certain way for a client, but the rules that needed to be overriden were numerous, used ids, had too much specificity, and we fell into an awful trap where we would have to write things like:

``` scss
html body .class .anotherClass #unrelatedID #actualID .thingIactuallyCareAbout { color: #000; }
```

That's specificity hell. Avoid it.

## Multiple Classes on an Element is the Goal

<pre><code>&lt;div class="group padded minimal"&gt;&lt;/div&gt;</code></pre>


# Naming

* It's really easy to name something.
* It can be hard to name it right.
* Don't be too generic.
* Be descriptive.
* Be terse.
* Try [thsrs](http://www.ironicsans.com/thsrs/), the shorter thesaurus.
* `.lowerCamelCase` your class names.

# Formatting

## Set your Editor to use two spaces, not tabs.

End of discussion.


## Always put a space between selector and curly brace.

``` scss
// ✔
.class { property: value; }

// ✘
.class{ property: value; }
```

## Always put a space between rule and curly braces.

``` scss
// ✔
.class { property: value; }

// ✘
.class {property: value;}
```

## Always use a semicolon, even on last rule.

``` scss
// ✔
.class { property: value; property: value; }

// ✘
.class { property: value; property: value }
```

## Always put a space between property and value.

``` scss
// ✔
.class { property: value; }

// ✘
.class { property:value; }
```

## Do Not style an HTML Tag unless it's scoped within a class.
Following this rule allows us to take advantage of semantic markup while avoiding collisions between widgets.
Alternatively, it's alright to scope a tag within the context of a tag, though I expect this will be rare.

The only exception is in a reset file. But we already have one, we use [normalize.css](http://necolas.github.io/normalize.css/), so you shouldn't ever be styling a tag directly.

``` scss
// ✔
.class { property: value; }
.class tag { property: value; }
tag .class { property: value; }

// ✘
tag { property:value; }
tag.class { property:value; }
```

## If there's only one property in the rule, one-line it.

You can reasonably fit 2 rules on one line without ruining readability.
So if there are only 2 rules you may choose to put them on one line or two.

``` scss
// ✔
.class { property: value; }
.class { property: value; property: value; }
.class {
  property: value;
  property: value;
}

// ✘
.class {
  property: value;
}
.selector { property: value; property: value; property: value; property: value; }
```

## List selectors on a single line
If you have a *lot* of selectors then you can break them into logical chunks, but you may want to organize your css differently as well.

``` scss
// ✔
.alpha, .beta, .gamma { property: value; }

// ✘
.alpha,
.beta,
.gamma
{ property: value; }
```

## Put the opening brace on the same line as the selector

``` scss
// ✔
.class {
  property: value;
  property: value;
}

// ✘
.class
{
  property: value;
  property: value;
}
```

## Write colors as hex values or rgba

``` scss
// ✔
.class { color: #000; }
.class { color: rgba(0, 0, 0, 0.85); }

// ✘
.class { color: black; }
```

## Put spaces after commas in RGBA and similar values.

``` scss
// ✔
.class { color: rgba(0, 0, 0, 0.85); }

// ✘
.class { color: rgba(0,0,0,0.85); }
```


# Nesting

## If a selector contains only another selector, then combine them.

``` scss
// ✔
.class .subclass {
   property: value;
   property: value;
}

// ✘
.class {
  .subclass {
    property: value;
    property: value;
  }
}
```

## Put an empty line between properties and a nested selector

The empty line after the final nested selector is optional. When last rule is a one-liner it tends to be more readable to have an extra line, when it's a multi-liner it looks better without it.

``` scss
// ✔
.class {
  property: value;

  .nestedClass {
    property: value;
    property: value;

    .nestedClass {
      property: value;
      property: value;
      property: value;
      property: value;
    }

    .nestedClass { property: value; }

  }
}
.class {
  property: value;

  .nestedClass {
    property: value;
    property: value;

    .nestedClass {
      property: value;
      property: value;
      property: value;
      property: value;
    }
  }
}

// ✘
.class {
  property: value;
  .nestedClass {
    property: value;
    property: value;
    .nestedClass {
      property: value;
      property: value;
      property: value;
      property: value;
    }
  }
}
```


# Modules

Modules should follow the same Basic Principles as noted above. However it's often useful to group like things together, such as `.group`, `.column`, and `.el` within `_structure.scss`.

