# toolchain file I use to cross compile on Linux
# targetting OSX/Darwin (powerpc). running:
# cmake -DCMAKE_TOOLCHAIN_FILE=/path/to/Toolchain-OSX-ppc.cmake ....

SET(CMAKE_SYSTEM_NAME Darwin)

SET(CMAKE_C_COMPILER /opt/cross_osx-ppc/bin/powerpc-apple-darwin9-gcc)
SET(CMAKE_CXX_COMPILER /opt/cross_osx-ppc/bin/powerpc-apple-darwin9-g++)

# where is the target environment
SET(CMAKE_FIND_ROOT_PATH /opt/cross_osx-ppc)

# adjust the default behaviour of the FIND_XXX() commands:
# search headers and libraries in the target environment, search
# programs in the host environment
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
