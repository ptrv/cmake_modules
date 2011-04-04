# Find Assembly3DWIZ

FIND_PATH(
    A3DWIZ_INCLUDE_DIR
    NAMES MeshWiz.h
    HINTS $ENV{A3DWIZ_DIR}/include/a3dtools/include
    PATHS /usr/local/include/a3dtools/include
          /usr/include/a3dtools/include
)
MESSAGE(STATUS "A3DWIZ_INCLUDE_DIR = ${A3DWIZ_INCLUDE_DIR}")

FIND_LIBRARY(
    A3DWIZ_LIBRARY
    NAMES A3DWIZ libMeshWiz.a
    HINTS $ENV{A3DWIZ_DIR}/lib
    PATHS /usr/local/lib
          /usr/lib
)
MESSAGE(STATUS "A3DWIZ_LIBRARY = ${A3DWIZ_LIBRARY}")

SET(A3DWIZ_FOUND "NO")

IF( A3DWIZ_INCLUDE_DIR AND A3DWIZ_LIBRARY )
    SET(A3DWIZ_FOUND "YES")
    MESSAGE(STATUS "Assembly3D Wiz found!")
ENDIF()
