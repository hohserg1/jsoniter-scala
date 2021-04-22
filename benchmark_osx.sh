#!/bin/bash
sbt -batch -java-home /Library/Java/JavaVirtualMachines/graalvm-ee-java16/Contents/Home -Dmacro.settings=print-codecs clean 'jsoniter-scala-benchmarkJVM/jmh:run -jvmArgsAppend "-Dgraal.UseBranchesWithin32ByteBoundary=true" -p size=128 -prof gc -rf json -rff graalvm-ee-java16.json .*' 2>&1 | tee graalvm-ee-java16.txt
sbt -batch -java-home /Library/Java/JavaVirtualMachines/graalvm-ee-java11/Contents/Home -Dmacro.settings=print-codecs clean 'jsoniter-scala-benchmarkJVM/jmh:run -jvmArgsAppend "-Dgraal.UseBranchesWithin32ByteBoundary=true" -p size=128 -prof gc -rf json -rff graalvm-ee-java11.json .*' 2>&1 | tee graalvm-ee-java11.txt
sbt -batch -java-home /Library/Java/JavaVirtualMachines/graalvm-ee-java8/Contents/Home -Dmacro.settings=print-codecs clean 'jsoniter-scala-benchmarkJVM/jmh:run -jvmArgsAppend "-Dgraal.UseBranchesWithin32ByteBoundary=true" -p size=128 -prof gc -rf json -rff graalvm-ee-java8.json .*' 2>&1 | tee graalvm-ee-java8.txt
sbt -batch -java-home /Library/Java/JavaVirtualMachines/graalvm-ce-java16/Contents/Home -Dmacro.settings=print-codecs clean 'jsoniter-scala-benchmarkJVM/jmh:run -jvmArgsAppend "-Dgraal.UseBranchesWithin32ByteBoundary=true" -p size=128 -prof gc -rf json -rff graalvm-ce-java16.json .*' 2>&1 | tee graalvm-ce-java16.txt
sbt -batch -java-home /Library/Java/JavaVirtualMachines/graalvm-ce-java11/Contents/Home -Dmacro.settings=print-codecs clean 'jsoniter-scala-benchmarkJVM/jmh:run -jvmArgsAppend "-Dgraal.UseBranchesWithin32ByteBoundary=true" -p size=128 -prof gc -rf json -rff graalvm-ce-java11.json .*' 2>&1 | tee graalvm-ce-java11.txt
sbt -batch -java-home /Library/Java/JavaVirtualMachines/openjdk-17/Contents/Home -Dmacro.settings=print-codecs clean 'jsoniter-scala-benchmarkJVM/jmh:run -p size=128 -prof gc -rf json -rff openjdk-17.json .*' 2>&1 | tee openjdk-17.txt
sbt -batch -java-home /Library/Java/JavaVirtualMachines/corretto-11/Contents/Home -Dmacro.settings=print-codecs clean 'jsoniter-scala-benchmarkJVM/jmh:run -p size=128 -prof gc -rf json -rff corretto-11.json .*' 2>&1 | tee corretto-11.txt
sbt -batch -java-home /Library/Java/JavaVirtualMachines/corretto-8/Contents/Home -Dmacro.settings=print-codecs clean 'jsoniter-scala-benchmarkJVM/jmh:run -p size=128 -prof gc -rf json -rff corretto-8.json .*' 2>&1 | tee corretto-8.txt
