all: compile

compile: library calculator.a
	g++ -o lab2 main.cpp calculator.a
	
library: main calculator.o
	ar rvs calculator.a calculator.o
	
main: calculator.cpp
	g++ -c calculator.cpp
	
clean:
	rm -f *.o compile
