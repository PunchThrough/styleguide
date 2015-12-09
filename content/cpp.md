---
layout: page
title: C++ Style Guide
nickname: C++
group: navigation
---

{% include JB/setup %}

## Style Guide

We use the [Google C++ Style Guide](https://google-styleguide.googlecode.com/svn/trunk/cppguide.html).

Our continuous integration server lints all code when it's pushed to a branch or added to a pull request. Your build will fail if it does not meet our style standards.

Here are the basic rules of the Google C++ Style Guide:

* Spaces, not tabs
* 2-space indentation
* Keep line length under 100 characters
 
## Linting and automatic formatting
    
It's a good idea to get familiar with the tools used by our CI server so you can lint and reformat your code locally.

We lint C++ projects with cpplint and reformat code with clang-format.

### Installing Linters

```bash
brew install clang-format
pip install cpplint
```

### Usage

```bash
# Lint files for Google style
cpplint [FILES...] [DIRECTORIES...]

# Reformat files using Google style
clang-format -style=Google -i [FILES...] [DIRECTORIES...]
```

### Configuration

Individual projects may have configurations for cpplint or clang-format already included.

clang-format uses the `.clang-format` file to set formatting style. See the [clang-format docs](http://clang.llvm.org/docs/ClangFormat.html) for more info.

cpplint is configured in `CPPLINT.cfg`. See the [cpplint.py source](https://google-styleguide.googlecode.com/svn/trunk/cpplint/cpplint.py) for more info on configuration options and linter filters.
