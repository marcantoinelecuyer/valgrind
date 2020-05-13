repo=$(shell bash -c 'read -p "C-file repository: " pwd; echo $$pwd')

build:
	docker build . -t valgrind

run:
	docker run --rm -v $(repo):/files/template.c -it valgrind
