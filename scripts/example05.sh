#!/bin/bash
cd ..
less src/example05/TieredCompilation.java
clear
cat src/example05/TieredCompilation.java
echo
echo "--------------------------------------------------------------------------------------------------"
echo "java -XX:+TieredCompilation -XX:+PrintCompilation -cp build/classes example05.TieredCompilation"
echo "--------------------------------------------------------------------------------------------------"
java -XX:+TieredCompilation -XX:+PrintCompilation -cp build/classes example05.TieredCompilation 2>&1  |  ack --color --passthru "StreamEncoder::writeBytes|Object::<init>|made not entrant" 
