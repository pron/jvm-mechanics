#!/bin/bash
cd ..
less src/example10b/ChaStorm.java
clear
cat src/example10b/ChaStorm.java
echo
echo "--------------------------------------------------------------------------------------------------"
echo "java -XX:-TieredCompilation -XX:+PrintCompilation -XX:+PrintSafepointStatistics -XX:PrintSafepointStatisticsCount=1 -cp build/classes example10b.ChaStorm"
echo "--------------------------------------------------------------------------------------------------"
java -XX:-TieredCompilation -XX:+PrintCompilation -XX:+PrintSafepointStatistics -XX:PrintSafepointStatisticsCount=1 -cp build/classes example10b.ChaStorm 2>&1  |  ack --color --passthru "ChaStorm::apply\d|made not entrant|Deoptimize" 
