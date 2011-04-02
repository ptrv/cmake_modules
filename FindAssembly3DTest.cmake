# Find Assembly3DTest

MACRO(DBG_MSG _MSG)
  MESSAGE(STATUS "${CMAKE_CURRENT_LIST_FILE}(${CMAKE_CURRENT_LIST_LINE}): ${_MSG}")
ENDMACRO(DBG_MSG)

FIND_PATH(
    A3DTEST_INCLUDE_DIR
    NAMES MeshTest.h
    HINTS $ENV{A3DTEST_DIR}/include/a3dtools/include
    PATHS /usr/local/include/a3dtools/include
          /usr/include/a3dtools/include
)
DBG_MSG("A3DTEST_INCLUDE_DIR = ${A3DTEST_INCLUDE_DIR}")

FIND_LIBRARY(
    A3DTEST_LIBRARY
    NAMES A3DTEST libMeshTest.a
    HINTS $ENV{A3DTEST_DIR}/lib
    PATHS /usr/local/lib
          /usr/lib
)
DBG_MSG("A3DTEST_LIBRARY = ${A3DTEST_LIBRARY}")

SET(A3DTEST_FOUND "NO")

IF( A3DTEST_INCLUDE_DIR AND A3DTEST_LIBRARY )
    SET(A3DTEST_FOUND "YES")
    DBG_MSG("Assembly3D Test found!")

ENDIF()
