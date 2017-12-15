# manylinux

We abuse many of the principles around the ```manylinux``` project for our own purposes. We are not making an attempt for widest support.

We also violate the ```manylinux``` principle by installing some libraries that are not named in [PEP-0513](https://www.python.org/dev/peps/pep-0513/).

## Getting started
We build tags of Python that match those already in ```manylinux```. Users can specify which versions to build via the build command.

```bash
VERSIONS="3.4 3.5 3.6" ./bin/build
```
