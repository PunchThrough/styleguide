# Sport Ngin Styleguide Site
---

This is the styleguide for Sport Ngin. You can view it in github pages at http://sportngin.github.io/styleguide

## Contributing to the Styleguide
Sport Ngin employees can make a pull request with changes.

## Setting up the project
This project has the gh-pages branch as a submodule for deployment. This needs to be set up. There is a rake task to do this.

```sh
rake setup
```

## Running locally
This project is built with jekyll. To run locally on port 4000:

```sh
bundle
jekyll server -w
```

## Deploying to github pages

Commit all changes and push to the master branch.

```sh
rake deploy
```

Then add the _site directory and commit.
