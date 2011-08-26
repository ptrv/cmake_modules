# Find Assembly3DPrim

FIND_PATH(
    A3DPRIM_INCLUDE_DIR
    NAMES MeshPrim.h
    HINTS $ENV{A3DPRIM_DIR}/include/a3dtools/include
    PATHS /usr/local/include/a3dtools/include
          /usr/include/a3dtools/include
)
MESSAGE(STATUS "A3DPRIM_INCLUDE_DIR = ${A3DPRIM_INCLUDE_DIR}")

FIND_LIBRARY(
    A3DPRIM_LIBRARY
    NAMES A3DPRIM libMeshPrim.a
    HINTS $ENV{A3DPRIM_DIR}/lib
    PATHS /usr/local/lib
          /usr/lib
)
MESSAGE(STATUS "A3DPRIM_LIBRARY = ${A3DPRIM_LIBRARY}")

SET(A3DPRIM_FOUND "NO")

IF( A3DPRIM_INCLUDE_DIR AND A3DPRIM_LIBRARY )
    SET(A3DPRIM_FOUND "YES")
    MESSAGE(STATUS "Assembly3D Prim found!")
ENDIF()
