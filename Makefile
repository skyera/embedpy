CXX = g++
CXXFLAGS = $(shell python -m pybind11 --includes) -std=c++11
P'YTHON_LIBS = $(shell python3-config --ldflags --embed)

PYBIND11_INCLUDE = $(shell python -m pybind11 --includes | sed 's/-I//g')

$(info PYBIND11_INCLUDE: $(PYBIND11_INCLUDE))

TARGET = myepy
SOURCES = main.cpp

all: $(TARGET)

$(TARGET): $(SOURCES)
	$(CXX) $(CXXFLAGS) $(SOURCES) -o $(TARGET) $(PYTHON_LIBS)

clean:
	rm -f $(TARGET)
