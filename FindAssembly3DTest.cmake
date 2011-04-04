# Find Assembly3DTest

FIND_PATH(
    A3DTEST_INCLUDE_DIR
    NAMES MeshTest.h
    HINTS $ENV{A3DTEST_DIR}/include/a3dtools/include
    PATHS /usr/local/include/a3dtools/include
          /usr/include/a3dtools/include
)
MESSAGE(STATUS "A3DTEST_INCLUDE_DIR = ${A3DTEST_INCLUDE_DIR}")

FIND_LIBRARY(
    A3DTEST_LIBRARY
    NAMES A3DTEST libMeshTest.a
    HINTS $ENV{A3DTEST_DIR}/lib
    PATHS /usr/local/lib
          /usr/lib
)
MESSAGE(STATUS "A3DTEST_LIBRARY = ${A3DTEST_LIBRARY}")

SET(A3DTEST_FOUND "NO")

IF( A3DTEST_INCLUDE_DIR AND A3DTEST_LIBRARY )
    SET(A3DTEST_FOUND "YES")
    MESSAGE(STATUS "Assembly3D Test found!")

ENDIF()
