import host
import sys

print(sys.version)
print("Hello from Python!")
result = host.add(1, 2)
print("Result from C++ add(1, 2):", result)

size = 10
nums = host.generate_list(size)
print("List from C++ generate_list(10):", nums)
