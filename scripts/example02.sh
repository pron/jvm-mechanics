#!/bin/bash
cd ..
less src/example02/InvocationCounter.java
clear
cat src/example02/InvocationCounter.java
echo
echo "--------------------------------------------------------------------------------------------------"
echo "java -XX:-TieredCompilation -XX:+PrintCompilation -cp build/classes example02.InvocationCounter"
echo "--------------------------------------------------------------------------------------------------"
java -XX:-TieredCompilation -XX:+PrintCompilation -cp build/classes example02.InvocationCounter 2>&1  |  ack --color --passthru "InvocationCounter::hotMethod" 
