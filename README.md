# [Punch Through Design Style Guide](https://punchthrough.github.io/styleguide)

This is the style guide used for code written by Punch Through Design.

## Contributing to the Style Guide

PTD employees can suggest changes in a branch or fork, then open a pull request for discussion and integration.

## Setting up the project

This project has the `gh-pages` branch set up as a submodule for deployment. To set up the submodule, run the following command:

```sh
rake setup
```

## Running locally

This project is built with Jekyll.

To run a development server locally, first install necessary gems:

```sh
bundle
```

Then start the Jekyll server to watch the source for changes and recompile automatically:

```sh
jekyll server --watch
```

Your server will be running on [localhost:4000](http://localhost:4000/).

## Deploying to GitHub Pages

Commit your source code changes to `master`, then Run the following command to commit all changes and push your changes to the `gh_pages` branch:

```sh
rake deploy
```
