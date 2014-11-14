# Eliom app base skeleton

Greatly inspired by https://github.com/whitequark/eliom-example.

## Dependencies

```
opam install eliom
```

## Building & running

To build only:

```
make
```

To build and run the server:
```
make run
```

Then, by default, navigate to [http://localhost:8080](http://localhost:8080).

## How to adapt the skeleton

### Writing more code for the app

Sources of the app are stored in `app/`; server-specific ml files belong in
`app/server/`, client-specific ones in `app/client/`.

### Changing the name of the main .eliom file (in `app/`)

You'll need to edit the server configuration (`config/server.xml`), and the
`Makefile`.

### Using additional libraries

- Add them in the `_tags` file: there is a line for general
  .ml/.mli/.eliom/.eliomi files in `app/`, a line for server-only files (in
  `app/server/`), and a line for client-only files (in `app/client/`).
- Add them in the server configuration (`config/server.xml`). For each library,
  add a line containing `<extension findilb-package="my-lib-name"/>`.

### Modifying the server port and other server-related settings

Edit the server configuration: `config/server.xml`.

## Logs & server databases

The `run/` directory contains the server logs and databases.
