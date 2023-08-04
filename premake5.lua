-- premake5.lua
workspace "SharedMemoryFxLibrary"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "SharedMemoryFxLibrary"

outputdir = "%{cfg.buildcfg}"

include "SharedMemoryFxLibrary"