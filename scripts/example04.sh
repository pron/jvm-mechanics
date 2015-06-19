#!/bin/bash
cd ..
less src/example04/BothCounters.java
clear
cat src/example04/BothCounters.java
echo
echo "--------------------------------------------------------------------------------------------------"
echo "java -XX:-TieredCompilation -XX:+PrintCompilation -cp build/classes example04.BothCounters"
echo "--------------------------------------------------------------------------------------------------"
java -XX:-TieredCompilation -XX:+PrintCompilation -cp build/classes example04.BothCounters 2>&1  |  ack --color --passthru "BothCounters::outerMethod|BothCounters::innerMethod" 
