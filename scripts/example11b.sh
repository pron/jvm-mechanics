#!/bin/bash
cd ..
less src/example11b/UninitializedForever.java
clear
cat src/example11b/UninitializedForever.java
echo
echo "--------------------------------------------------------------------------------------------------"
echo "java -XX:-TieredCompilation -XX:+PrintCompilation -cp build/classes example11b.UninitializedForever"
echo "--------------------------------------------------------------------------------------------------"
java -XX:-TieredCompilation -XX:+PrintCompilation -cp build/classes example11b.UninitializedForever 2>&1  |  ack --color --passthru "UninitializedForever::main|made not entrant|made zombie" 
