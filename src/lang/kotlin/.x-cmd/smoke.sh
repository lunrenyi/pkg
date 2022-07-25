pkg:info "kotlin"
x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/bin/kotlinc -version' <<A
NOTE: you are running "kotlinc" CLI tool from Kotlin/Native distribution,
it runs Kotlin/Native compiler that produces native binaries from Kotlin code.
If your intention was to compile Kotlin code to JVM bytecode instead, then you
need to use "kotlinc" from the main Kotlin distribution (e.g. it can be
downloaded as kotlin-compiler-X.Y.ZZ.zip archive from
https://github.com/JetBrains/kotlin/releases/latest, or installed using various
package managers).

WARNING: if your intention was to run Kotlin/Native compiler, then please use
"kotlinc-native" CLI tool instead of "kotlinc". "kotlinc" tool will be removed
from Kotlin/Native distribution, so it will stop clashing with "kotlinc" from
the main Kotlin distribution.

info: kotlinc-native 1.6.21 (JRE 18+36-2087)
Kotlin/Native: 1.6.21
A

kotlinc -version