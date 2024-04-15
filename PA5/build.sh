#!/bin/bash
java -classpath /Users/karenmai/Downloads/javacc-javacc-7.0.12/bootstrap/javacc.jar javacc PA5.jj
javac PA5.java
javac CodeGen_Visitor.java
echo "compiled java files"
cp tests/test.c tests/demo.c
cd tests; gcc -c -S print.c
cd .. 
java PA5 < tests/demo.c > tests/demo.s
cd tests; gcc demo.s print.s -o demo; ./demo

gcc -c -S print.c

java -classpath /Users/karenmai/Downloads/javacc-javacc-7.0.12/bootstrap/javacc.jar javacc PA5.jj
javac PA5.java
javac CodeGen_Visitor.java 
java PA5 < tests/demo_while.c > tests/demo_while.s
java PA5 < tests/print.c > tests/print.s
gcc tests/print.s tests/demo_while.s -o demo;