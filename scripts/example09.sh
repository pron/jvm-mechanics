#!/bin/bash
cd ..
less src/example09/Unreached.java
clear
cat src/example09/Unreached.java
echo
echo "--------------------------------------------------------------------------------------------------"
echo "java -XX:-TieredCompilation -XX:+PrintCompilation -cp build/classes example09.Unreached"
echo "--------------------------------------------------------------------------------------------------"
java -XX:-TieredCompilation -XX:+PrintCompilation -cp build/classes example09.Unreached 2>&1  |  ack --color --passthru "Unreached::hotMethod|made not entrant" 
