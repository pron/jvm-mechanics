#!/bin/bash
cd ..
less src/example03/BackedgeCounter.java
clear
cat src/example03/BackedgeCounter.java
echo
echo "--------------------------------------------------------------------------------------------------"
echo "java -XX:-TieredCompilation -XX:+PrintCompilation -cp build/classes example03.BackedgeCounter"
echo "--------------------------------------------------------------------------------------------------"
java -XX:-TieredCompilation -XX:+PrintCompilation -cp build/classes example03.BackedgeCounter 2>&1  |  ack --color --passthru "BackedgeCounter::main" 
