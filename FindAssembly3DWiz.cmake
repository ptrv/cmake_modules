# Find Assembly3DWIZ

MACRO(DBG_MSG _MSG)
  MESSAGE(STATUS "${CMAKE_CURRENT_LIST_FILE}(${CMAKE_CURRENT_LIST_LINE}): ${_MSG}")
ENDMACRO(DBG_MSG)

FIND_PATH(
    A3DWIZ_INCLUDE_DIR
    NAMES MeshWiz.h
    HINTS $ENV{A3DWIZ_DIR}/include/a3dtools/include
    PATHS /usr/local/include/a3dtools/include
          /usr/include/a3dtools/include
)
DBG_MSG("A3DWIZ_INCLUDE_DIR = ${A3DWIZ_INCLUDE_DIR}")

FIND_LIBRARY(
    A3DWIZ_LIBRARY
    NAMES A3DWIZ libMeshWiz.a
    HINTS $ENV{A3DWIZ_DIR}/lib
    PATHS /usr/local/lib
          /usr/lib
)
DBG_MSG("A3DWIZ_LIBRARY = ${A3DWIZ_LIBRARY}")

SET(A3DWIZ_FOUND "NO")

IF( A3DWIZ_INCLUDE_DIR AND A3DWIZ_LIBRARY )
    SET(A3DWIZ_FOUND "YES")
    DBG_MSG("Assembly3D Wiz found!")
ENDIF()
