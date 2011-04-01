# Find Assembly3DWIZ

FIND_PATH(
    A3DWIZ_INCLUDE_DIR
    NAMES MeshWiz.h
    HINTS $ENV{A3DWIZ_DIR}/include/a3dtools
    PATHS /usr/local/include/a3dtools
          /usr/include/a3dtools
)

FIND_LIBRARY(
    A3DWIZ_LIBRARY
    NAMES A3DWIZ libMeshWiz.a
    HINTS $ENV{A3DWIZ_DIR}/lib
    PATHS /usr/local/lib
          /usr/lib
)

SET(A3DWIZ_FOUND "NO")

IF( A3DWIZ_INCLUDE_DIR AND A3DWIZ_LIBRARY )
    SET(A3DWIZ_FOUND "YES")
ENDIF()
