#!/bin/bash
cd ..
less src/example10c/ClassDevirtualization.java
clear
cat src/example10c/ClassDevirtualization.java
echo
echo "--------------------------------------------------------------------------------------------------"
echo "java -XX:-TieredCompilation -XX:+PrintCompilation -cp build/classes example10c.ClassDevirtualization"
echo "--------------------------------------------------------------------------------------------------"
java -XX:-TieredCompilation -XX:+PrintCompilation -cp build/classes example10c.ClassDevirtualization 2>&1  |  ack --color --passthru "ClassDevirtualization::apply\d|made not entrant" 
