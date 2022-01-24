# This top-level micropython.cmake is responsible for listing
# the individual modules we want to include.
# Paths are absolute, and ${CMAKE_CURRENT_LIST_DIR} can be
# used to prefix subdirectories.


include(${CMAKE_CURRENT_LIST_DIR}/display/epd/src/micropython.cmake)

include(${CMAKE_CURRENT_LIST_DIR}/network/gsm/src/micropython.cmake)
