#include <pybind11/embed.h>  // pybind11 header for embedding Python
#include <iostream>
#include <string>

namespace py = pybind11;

int add(int a, int b) {
    return a + b;
}

PYBIND11_EMBEDDED_MODULE(ex, m) {
    m.def("add", &add, "A function that adds two numbers");
}

int main(int argc, char** argv) {
    if (argc < 3 || std::string(argv[1]) != "--py") {
        std::cerr << "Usage: " << argv[0] << " --py <script.py>" << std::endl;
        return 1;
    }

    std::string script = argv[2];

    try {
        py::scoped_interpreter guard{};

        py::eval_file(script);
    } catch (const std::exception &e) {
        std::cerr << "Error executing script: " << e.what() << std::endl;
        return 1;
    }

    return 0;
}
