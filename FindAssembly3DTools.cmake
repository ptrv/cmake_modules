# Find Assembly3DTools

FIND_PATH(
    A3DTOOLS_INCLUDE_DIR
    NAMES Assembly3D.h
    HINTS $ENV{A3DTOOLS_DIR}/include/a3dtools
    PATHS /usr/local/include/a3dtools
          /usr/include/a3dtools
)

FIND_LIBRARY(
    A3DTOOLS_LIBRARY
    NAMES A3DTOOLS libA3DCommon.a
    HINTS $ENV{A3DTOOLS_DIR}/lib
    PATHS /usr/local/lib
          /usr/lib
)

SET(A3DTOOLS_FOUND "NO")

IF( A3DTOOLS_INCLUDE_DIR AND A3DTOOLS_LIBRARY )
    SET(A3DTOOLS_FOUND "YES")
ENDIF()
