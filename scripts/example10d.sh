#!/bin/bash
cd ..
less src/example10d/InterfaceDevirtualization.java
clear
cat src/example10d/InterfaceDevirtualization.java
echo
echo "--------------------------------------------------------------------------------------------------"
echo "java -XX:-TieredCompilation -XX:+PrintCompilation -cp build/classes example10d.InterfaceDevirtualization"
echo "--------------------------------------------------------------------------------------------------"
java -XX:-TieredCompilation -XX:+PrintCompilation -cp build/classes example10d.InterfaceDevirtualization 2>&1  |  ack --color --passthru "InterfaceDevirtualization::apply\d|made not entrant" 
