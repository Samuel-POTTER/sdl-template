#!/bin/bash

SDL_INCLUDE_DIR=$(find /usr/local/Cellar/sdl2 -name "SDL.h" -exec dirname {} \;)

SDL_LIB_DIR=$(find /usr/local/Cellar/sdl2 -name "libSDL2*.*" -exec dirname {} \; | head -n 1)

# Check if SDL_INCLUDE_DIR and SDL_LIB_DIR are not empty
if [ -n "$SDL_INCLUDE_DIR" ] && [ -n "$SDL_LIB_DIR" ]; then
    echo "Found SDL2 include directory: $SDL_INCLUDE_DIR"
    echo "Found SDL2 library directory: $SDL_LIB_DIR"

    # Create or update the premake5.lua script
    cat <<EOL >premake5.lua
workspace "MySDL2Project"
    configurations { "Debug", "Release" }

project "MySDL2Project"
    kind "ConsoleApp"
    language "C++"
    targetdir "bin/%{cfg.buildcfg}"

    files { "main.cpp" }

    includedirs { "$SDL_INCLUDE_DIR" } -- Path to SDL2 headers
    libdirs { "$SDL_LIB_DIR" } -- Path to SDL2 library
    links { "SDL2", "SDL2main" } -- Link against SDL2 library

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"
EOL
else
    echo "Error: SDL2 include or library directory not found."
fi
