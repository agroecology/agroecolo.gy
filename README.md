# agroecolo.gy

Top-level site for http://agroecolo.gy/

## Setup

If you are going to contribute to the Agroecolo.gy site content, you will need
to have the following installed (links are to instructions):

* [Java](https://www.java.com/en/download/help/index_installing.xml)
* [Clojure](http://clojure.org/getting_started)


## Working with the Project

### Running a Local Server

Before publishing content to the public server, you can check your changes
locally by running the following in a terminal window:

```bash
$ make dev
```

or

```bash
$ lein ring server
```

### Generating Static Site Content

If you'd like to generate the content without running the dev web server, just do:

```bash
$ make build
```

or

```bash
$ lein run
```

### Publishing

To publish updated content to the site:

```bash
$ make publish
```
