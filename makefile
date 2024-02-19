.PHONY: test

gen:
	gap_to_julia Toposes

test:
	julia -e 'using Pkg; Pkg.test("Toposes", julia_args = ["--warn-overwrite=no"]);'
