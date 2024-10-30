# windows平台下的CMake编译指令

```
cmake -G "MSYS Makefiles"
```
```
cmake -G "MinGW Makefiles" ..    MinGW编译器指令
```
在cmake指令后增加参数 -G来指定任务生成器，window下可能还有visual Studio 2017等编译器

### mingw32-make
windows下用这个指令代替make，且后边不要加.这个相对路径符号，这个也是MinGW下的make指令