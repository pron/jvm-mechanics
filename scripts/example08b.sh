#!/bin/bash
cd ..
less src/example08b/HotException.java
clear
cat src/example08b/HotException.java
echo
echo "--------------------------------------------------------------------------------------------------"
echo "java  -cp build/classes example08b.HotException"
echo "--------------------------------------------------------------------------------------------------"
java  -cp build/classes example08b.HotException 2>&1  
