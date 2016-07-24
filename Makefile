all: build

run: build
	mkdir -p run/log run/data run/tmp
	ocsigenserver -v -c config/server.xml

browse:
	sensible-browser http://localhost:8080
	make server

build:
	ocamlbuild -use-ocamlfind -plugin-tags 'package(eliom.ocamlbuild)' app/server/hello.cma app/server/hello.cmxs app/client/hello.js
	@ln -sf ../_build/app/client/hello.js static/hello.js

clean:
	rm -f static/hello.js
	ocamlbuild -clean

distclean: clean
	rm -rf run/

.PHONY: all run build clean distclean
