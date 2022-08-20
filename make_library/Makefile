CC = clang++-9
flag = -c

add.o : add.cpp add.hpp
	$(CC) $(flag) add.cpp

mul.o : mul.cpp mul.hpp
	$(CC) $(flag) mul.cpp

sub.o : sub.cpp sub.hpp
	$(CC) $(flag) sub.cpp

div.o : div.cpp div.hpp
	$(CC) $(flag) div.cpp

arithmetic_operation.a : add.o mul.o sub.o div.o
	ar r arithmetic_operation.a add.o mul.o sub.o div.o