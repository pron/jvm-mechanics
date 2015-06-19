#!/bin/bash
cd ..
less src/example10a/Monomorphic.java
clear
cat src/example10a/Monomorphic.java
echo
echo "--------------------------------------------------------------------------------------------------"
echo "java -XX:-TieredCompilation -XX:+PrintCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintInlining -cp build/classes example10a.Monomorphic"
echo "--------------------------------------------------------------------------------------------------"
java -XX:-TieredCompilation -XX:+PrintCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintInlining -cp build/classes example10a.Monomorphic 2>&1  |  ack --color --passthru "Monomorphic::apply|Square::apply|inline \(hot\)" 
