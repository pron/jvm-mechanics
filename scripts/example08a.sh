#!/bin/bash
cd ..
less src/example08a/NullCheck.java
clear
cat src/example08a/NullCheck.java
echo
echo "--------------------------------------------------------------------------------------------------"
echo "java -XX:-TieredCompilation -XX:+PrintCompilation -XX:+UnlockDiagnosticVMOptions -XX:CompileCommand=print,example08a/ImplicitNullCheck::hotMethod -cp build/classes example08a.NullCheck"
echo "--------------------------------------------------------------------------------------------------"
java -XX:-TieredCompilation -XX:+PrintCompilation -XX:+UnlockDiagnosticVMOptions -XX:CompileCommand=print,example08a/ImplicitNullCheck::hotMethod -cp build/classes example08a.NullCheck 2>&1  |  ack --color --passthru "NullCheck::hotMethod|made not entrant" 
