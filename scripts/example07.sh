#!/bin/bash
cd ..
less src/example07/DirectInlining.java
clear
cat src/example07/DirectInlining.java
echo
echo "--------------------------------------------------------------------------------------------------"
echo "java -XX:-TieredCompilation -XX:+PrintCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintInlining -XX:CompileCommand=print,example07/DirectInlining::hotMethod -cp build/classes example07.DirectInlining"
echo "--------------------------------------------------------------------------------------------------"
java -XX:-TieredCompilation -XX:+PrintCompilation -XX:+UnlockDiagnosticVMOptions -XX:+PrintInlining -XX:CompileCommand=print,example07/DirectInlining::hotMethod -cp build/classes example07.DirectInlining 2>&1  |  ack --color --passthru "DirectInlining::square|PrintStram::println|invokevirtual println|0x31|0x51" 
