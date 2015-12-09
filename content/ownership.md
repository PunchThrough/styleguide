---
layout: page
title: Code Quality Standards
nickname: Quality
group: navigation
---
{% include JB/setup %}

## Ownership

### Definition

Ownership of source code is an abstract concept. It does not mean the same thing as legally owning the rights to use source code, or legally owning the copyright to code. When we own code, we are indicating that we take full responsibility for its quality. We commit to maintaining, fixing, and updating code we own.

### Do we own this code?

We own code if both of the following are true:

1. The file is checked into a repository we own
2. The file is not marked as belonging to a third-party project

## Standards for Owned Code

The following standards apply to code we own:

1. It must meet our code style guidelines
2. Code style must be enforced by automated testing and linting
3. All changes to this code must go through peer review

Code that we do not own, such as third-party library code **still linked to the upstream source**, does not need to follow these rules.

## Linking to Upstream

If we don't own code, someone else must. It's critical that we track who owns the code in our project by linking it to an upstream source.

Here are a few ways code can be linked to an upstream source:

### Git submodules and subtrees

**Example:** An external dependency is added to a project via Git submodule or subtree. In this case, there is a link from the project repo to the external dependency repo. This link lives in Git and makes it easy to see what changes occur upstream.

### Dependency managers

**Example:** An external dependency is added to a project via Cocoapods for Obj-C, Pip for Python, or Bundler for Ruby. In this case, there is a clear link between the installed package and the upstream source. The package manager's index has information regarding the upstream source.

### Copy and Paste with Documentation

**Example:** An embedded library is copied from a zip archive on the manufacturer's website into the project directory. The embedded library lives in its own directory. The library directory contains a README file with information about where the library came from, when it was added, and what it's used for in the project.
