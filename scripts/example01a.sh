#!/bin/bash
cd ..
less src/example01a/SimpleProgram.java
clear
cat src/example01a/SimpleProgram.java
echo
echo "--------------------------------------------------------------------------------------------------"
echo "java -XX:+TieredCompilation -cp build/classes example01a.SimpleProgram"
echo "--------------------------------------------------------------------------------------------------"
java -XX:+TieredCompilation -cp build/classes example01a.SimpleProgram 2>&1  
