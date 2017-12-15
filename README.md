# manylinux

We add ```libpython``` to ```pypa/manylinux```. We use the default install locations even though we should really stay in sync with the existing locations and scripts that return ```LDFLAGS``` and other flags.

We also violate the ```manylinux``` principle by installing some libraries that are not named in [PEP-0513](https://www.python.org/dev/peps/pep-0513/).
