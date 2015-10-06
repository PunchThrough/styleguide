---
layout: page
title: C++
header: C++ Style Guide
group: navigation
---

{% include JB/setup %}

## Introduction

---

This guide is a living document.  If there is ever a question related to style that is not
present in this guide, refer to the [Official Google C++ Style Guide](https://google-styleguide.googlecode.com/svn/trunk/cppguide.html).

## Style and Formatting

---

#### Basics

* Spaces instead of tabs
* 2-space indentation
* Keep line length around 80-100 characters

## Development

---

#### Best Practices

Try to exercise these best practices while working on a C/C++ project.
 
* **Linting and automatic formatting**
    
    Most of our projects should be using a CI server to enforce proper format but it's also
    a good idea to get familiar with the tools yourself.  For C/C++ projects we use `cpplint`
    which was developed by google and `clang-format` for automated formatting.
    
    Here is how you install and run these tools
    
    ```
    $ brew install clang-format
    $ pip install cpp-lint
    ```
    
    Typical usage
    
    ```
    $ cpp-lint [file(s) or directory]
    $ clang-format -i [file(s) or directory]
    ```
  