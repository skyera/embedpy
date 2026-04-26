# Embed Python in C++ Lab

A minimal example of embedding a Python interpreter within a C++ application using [pybind11](https://github.com/pybind/pybind11).

## Setup

This project uses `pybind11` as a git submodule.

### Cloning
To clone the repository along with the dependencies:
```bash
git clone --recursive <repo-url>
```

If you have already cloned the repo:
```bash
git submodule update --init --recursive
```

## Building

Ensure you have Python 3 development headers installed.

```bash
make
```

## Usage

Run the host executable by providing the example Python script:
```bash
./embedpy --py example.py
```

## How it works
- `host.cpp`: Initializes the Python interpreter and defines an embedded module `host` with C++ functions.
- `example.py`: A Python script that imports the `host` module and calls the C++ functions.
- `Makefile`: Compiles the C++ code into the `embedpy` binary, linking against the local `pybind11` headers and the system's Python library.
