---
layout: page
title: JavaScript Style Guide
nickname: JavaScript
group: navigation
---
{% include JB/setup %}

## Introduction

This style guide serves as a way to standardize JavaScript code we write at Punch Through Design.

If you can't find an answer in here, use your best judgement and keep things readable. Strive for terse, readable code.

## Use the Standard Style

> One style to rule them all. No decisions to make. It just works.

Use the [Javascript Standard Style](http://standardjs.com/).

Wondering what Standard looks like? [Here's an example file written with Standard.](https://github.com/feross/bittorrent-dht/blob/master/client.js)

## tl;dr

Here's a quick overview of the rules:

- **2 spaces** – for indentation
- **Single quotes for strings** – except to avoid escaping
- **No unused variables**
- **No semicolons**
- **Never start a line with `(` or `[`**
- **Space after keywords**
  - `if (condition) { ... }`
- **Space after function name**
  - `function name (arg) { ... }`
- Always use `===` instead of `==` – but `obj == null` is allowed to check `null || undefined`.
- Always handle the node.js `err` function parameter
- Always prefix browser globals with `window` – except `document` and `navigator` are okay

## Usage

Use ESLint in your projects. Enforcing style with ESLint means that WebStorm will automatically pick up on your style settings and yell at you when you make mistakes. If you install Sublime Linter, you can get the same experience in Sublime too.

### Install ESLint and plugins

```sh
npm install -g eslint eslint-config-standard eslint-plugin-standard
```

### Add an ESLint config file

Put the following into a file named `.eslintrc` into the root of each of your JS projects:

```
{
  "extends": "standard"
}
```

### Enable in WebStorm

By default, WebStorm will complain about missing semicolons at the end of a line. To turn that off, go to the WebStorm preferences:

**Preferences > Editor > Inspections > JavaScript**

![WebStorm Inspections](./content/assets/js-silence-unterminated-lines.png)

While you're there, enable ESLint as well:

**Preferences > Languages & Frameworks > JavaScript > Code Quality Tools > ESLint**

![WebStorm ESLint](./content/assets/enable-eslint.png)
