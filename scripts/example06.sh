#!/bin/bash
cd ..
less src/example06/Intrinsics.java
clear
cat src/example06/Intrinsics.java
echo
echo "--------------------------------------------------------------------------------------------------"
echo "java -XX:-TieredCompilation -XX:+PrintCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintInlining -cp build/classes example06.Intrinsics"
echo "--------------------------------------------------------------------------------------------------"
java -XX:-TieredCompilation -XX:+PrintCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintInlining -cp build/classes example06.Intrinsics 2>&1  |  ack --color --passthru "Math::min|intrinsic" 
