# 🚲 Bicycle - Swift Documentation Example

A companion project to the
[NSHipster article about Swift Documentation](https://nshipster.com/swift-documentation/).

## Requirements

- Xcode
- Git 2.16.2+
- Ruby 2.4.3+
- [Bundler](https://bundler.io)

## Generating Docs

First, clone the repository by opening Terminal.app
and running the following commands:

```terminal
$ git clone git@github.com:NSHipster/Swift-Documentation-Example.git
$ cd Swift-Documentation-Example
```

Next, download project dependencies with Bundler using the command:

```terminal
$ bundle install
```

Use [Jazzy](https://github.com/realm/jazzy)
to generate web pages from the documentation comments of this Swift project:

```terminal
$ bundle exec jazzy -o Docs
```

Now open the `index.html` from the `Docs` directory
to view the generated documentation:

```terminal
$ open Docs/index.html
```

## License

This project is released under the
[MIT License](https://opensource.org/licenses/MIT).
See the LICENSE file for more info.

NSHipster® and the NSHipster Logo
are registered trademarks of Read Evaluate Press, LLC.
