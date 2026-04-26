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

Run the executable by providing a Python script:
```bash
./myepy --py script.py
```

## How it works
- `main.cpp`: Initializes the Python interpreter and defines an embedded module `ex` with C++ functions.
- `script.py`: A Python script that imports the `ex` module and calls the C++ functions.
- `Makefile`: Compiles the C++ code, linking against the local `pybind11` headers and the system's Python library.
