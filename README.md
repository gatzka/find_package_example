# What is it?

This is an example project showing the usage of cmake's find_package().
There are four projects:
- foo: a simple library
- foo_user: an executable using library foo
- bar: a simple library using foo
- bar_user: an executable using library bar

In essence, bar_user has a transitive dependency to library foo via library bar.
It looks that cmake's `install(EXPORT ...)` commands don't emit statements to
handle transitive dependencies out-of-the-box.

Therefore, we let `install(EXPORT ...)` generate a "private" config file and install
a self-written "public" config file which handles the transitive dependency.

Please have a look into [bar/CMakeLists.txt](bar/CMakeLists.txt) and
[bar/barConfig.cmake](bar/barConfig.cmake)
