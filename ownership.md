---
layout: page
title: Quality
header: Code Quality Standards
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
2. This will be enforced by automated testing and linting
3. All changes to this code must go through peer review

Code that we do not own, such as third-party library code **still linked to the upstream source**, does not need to follow these rules.
