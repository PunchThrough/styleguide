# [Punch Through Style Guide](https://punchthrough.github.io/styleguide)

This is the style guide used for code written by Punch Through.

## Contributing

Punch Through employees can suggest changes in a branch or fork, then open a pull request for discussion and integration.

## Building Locally

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

You shouldn't have to do this yourself. CircleCI will build the project and push to GitHub Pages automatically when master is updated.

```bash
npm install          # Install dependencies
npm run gulp deploy  # Build project and push to GitHub Pages
```
