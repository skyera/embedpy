CXX = g++
PYBIND11_PATH = extern/pybind11
CXXFLAGS = -I$(PYBIND11_PATH)/include $(shell python3-config --includes) -std=c++11
PYTHON_LIBS = $(shell python3-config --ldflags --embed)

$(info PYBIND11_PATH: $(PYBIND11_PATH))
$(info PYTHON_LIBS: $(PYTHON_LIBS))

TARGET = embedpy
SOURCES = host.cpp

all: $(TARGET)

$(TARGET): $(SOURCES)
	$(CXX) $(CXXFLAGS) $(SOURCES) -o $(TARGET) $(PYTHON_LIBS)

clean:
	rm -f $(TARGET)
