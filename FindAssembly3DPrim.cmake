# Find Assembly3DPrim

MACRO(DBG_MSG _MSG)
  MESSAGE(STATUS "${CMAKE_CURRENT_LIST_FILE}(${CMAKE_CURRENT_LIST_LINE}): ${_MSG}")
ENDMACRO(DBG_MSG)

FIND_PATH(
    A3DPRIM_INCLUDE_DIR
    NAMES MeshPrim.h
    HINTS $ENV{A3DPRIM_DIR}/include/a3dtools/include
    PATHS /usr/local/include/a3dtools/include
          /usr/include/a3dtools/include
)
DBG_MSG("A3DPRIM_INCLUDE_DIR = ${A3DPRIM_INCLUDE_DIR}")

FIND_LIBRARY(
    A3DPRIM_LIBRARY
    NAMES A3DPRIM libMeshPrim.a
    HINTS $ENV{A3DPRIM_DIR}/lib
    PATHS /usr/local/lib
          /usr/lib
)
DBG_MSG("A3DPRIM_LIBRARY = ${A3DPRIM_LIBRARY}")

SET(A3DPRIM_FOUND "NO")

IF( A3DPRIM_INCLUDE_DIR AND A3DPRIM_LIBRARY )
    SET(A3DPRIM_FOUND "YES")
    DBG_MSG("Assembly3D Prim found!")
ENDIF()
