#!/bin/bash
cd ..
less src/example11a/UnloadedForever.java
clear
cat src/example11a/UnloadedForever.java
echo
echo "--------------------------------------------------------------------------------------------------"
echo "java -XX:-TieredCompilation -XX:+PrintCompilation -cp build/classes example11a.UnloadedForever"
echo "--------------------------------------------------------------------------------------------------"
java -XX:-TieredCompilation -XX:+PrintCompilation -cp build/classes example11a.UnloadedForever 2>&1  |  ack --color --passthru "UnloadedForever::factory|made not entrant|made zombie" 
