#!/bin/bash
cd ..
less src/example01b/LessSimpleProgram.java
clear
cat src/example01b/LessSimpleProgram.java
echo
echo "--------------------------------------------------------------------------------------------------"
echo "java -XX:+TieredCompilation -cp build/classes example01b.LessSimpleProgram"
echo "--------------------------------------------------------------------------------------------------"
java -XX:+TieredCompilation -cp build/classes example01b.LessSimpleProgram 2>&1  
