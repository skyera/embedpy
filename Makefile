CXX = g++
CXXFLAGS = $(shell python -m pybind11 --includes) -std=c++11

# The Python version might need to be adjusted to match your system
PYTHON_LIBS = $(shell python3-config --ldflags) -lpython3.12

TARGET = myepy
SOURCES = main.cpp

all: $(TARGET)

$(TARGET): $(SOURCES)
	$(CXX) $(CXXFLAGS) $(SOURCES) -o $(TARGET) $(PYTHON_LIBS)

clean:
	rm -f $(TARGET)
