workspace "MySDL2Project"
    configurations { "Debug", "Release" }

project "MySDL2Project"
    kind "ConsoleApp"
    language "C++"
    targetdir "bin/%{cfg.buildcfg}"

    files { "main.cpp" }

    includedirs { "/usr/local/Cellar/sdl2/2.28.5/include/SDL2" } -- Path to SDL2 headers
    libdirs { "/usr/local/Cellar/sdl2/2.28.5/lib" } -- Path to SDL2 library
    links { "SDL2", "SDL2main" } -- Link against SDL2 library

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"
