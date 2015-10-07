---
layout: page
title: Python Style Guide
nickname: Python
group: navigation
---
{% include JB/setup %}

## Introduction

This style guide serves as a way to standardize Python code we write at Punch Through Design.

## The Gold Standard: PEP8

[PEP8](https://www.python.org/dev/peps/pep-0008/) is the Python style guide that everyone uses, from open-source developers to enterprise companies. It's been blessed by Python's creator and Benevolent Dictator for Life, Guido van Rossum. It's extremely well-written and should be referred to when writing consistent Python code.

The biggest things you should take away from PEP8 are:

* Keep your code explicit and show exactly what you're doing.
* Don't try to write complex one-liners. Make it easy for people coming after you to understand how your code works.
* Code consistently. You almost certainly do not have a good enough reason to break the rules.

It's highly recommended you read through PEP8. Here are some of the important bits:

### Indentation

Use 4 spaces per indentation level. Do not use tabs.

### Line Length and Wrapping

Limit lines to 79 characters. Do not wrap lines with `\` characters. Instead, use parentheses to group arguments. For example:

```python
if width == 0 and height == 0 and (color == 'red' or
                                   emphasis is None):
    raise ValueError("I don't think so -- values are %s, %s" %
                     (width, height))
```

### Naming

Name variables with snake_case (`my_special_var`) instead of camelCase (`mySpecialVar`).

Classes are named with PascalCase, which is camelcase with a leading capital letter (`MySpecialClass`).

Name constants with all-caps snake case (`MY_SPECIAL_CONSTANT`). This doesn't change any behavior of the variable, but it indicates to programmers that the value of the variable is not expected to change.



### Spacing

**Let your code breathe.**

Put two lines before top-level functions (`def my_func():`) and class definitions (`class MyClass:`).

Give each import its own line.

**Preferred:**

```python
import os
import sys
```

**Not Preferred:**

```python
import os, sys
```

Avoid extraneous whitespace inside parens, brackets, and braces, as well as immediately before a comma, semicolon, or colon.

**Preferred:**

```python
spam(ham[1], {eggs: 2})
```

**Not Preferred:**

```python
spam( ham[ 1 ], { eggs: 2 } )
```

### Docstrings

Docstrings are the superhero version of regular comments. They look like this:

```python
def fuzzify(creature, extra_fuzzy=False):
    """Makes a creature more fuzzy.

    Optional extra_fuzzy says to make the creature exceptionally fuzzy.
    """
```

Write docstrings for all public modules, functions, classes, and methods. More info on docstrings is available in [PEP 257](https://www.python.org/dev/peps/pep-0257/).

## Prefer Python 3

In the past, newbies were advised to start with Python 2 because many libraries didn't support Python 3. [This is no longer the case.](https://python3wos.appspot.com/)

Python 3 has [tons of features](http://asmeurer.github.io/python3-presentation/slides.html#1) that you're missing out on when you choose to work exclusively in Python 2. These aren't just nice to have—they include cleaner, more explicit syntax, behavior fixes in the standard library, and better handling of unicode strings versus raw bytes.

Unless you have a really good reason, write your new scripts in Python 3.

## Useful Tools and Resources

Want to automatically check your Python code for PEP8 style and common errors? Use [flake8](http://flake8.readthedocs.org/en/2.2.3/). There's a [Sublime Text plugin](https://github.com/SublimeLinter/SublimeLinter-flake8) as well—make sure to read the instructions.

The Python Guide has a nice page on [Code Style](http://docs.python-guide.org/en/latest/writing/style/). It includes some common Python idioms, such as how to create a list of `None`s of a specific length or how to ignore return variables.



## The Zen of Python

> Beautiful is better than ugly.
>
> Explicit is better than implicit.
>
> Simple is better than complex.
>
> Complex is better than complicated.
>
> Flat is better than nested.
>
> Sparse is better than dense.
>
> Readability counts.
>
> Special cases aren't special enough to break the rules.
>
> Although practicality beats purity.
>
> Errors should never pass silently.
>
> Unless explicitly silenced.
