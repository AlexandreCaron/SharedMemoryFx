-- premake5.lua
project "SharedMemoryFxLibrary"
   kind "SharedLib"
   language "C++"
   cppdialect "C++17"
   targetdir "bin/%{cfg.buildcfg}"
   staticruntime "off"

   files { "./Includes/**.h", "./Sources/**.cpp" }

   includedirs
   {
      "./Includes"
   }
   
   defines 
   { 
   }
   
   libdirs
   {
   }
   
   links
   {
   }
   
   targetdir ("../Binaries")
   objdir ("./Intermediates")

   filter "system:windows"
      systemversion "latest"
      defines { "PLATFORM_WINDOWS",
                "EXPORTING"}

   filter "configurations:Debug"
      defines { "DEBUG" }
      runtime "Debug"
      symbols "On"
      ignoredefaultlibraries { "MSVCRT" }

   filter "configurations:Release"
      defines { "RELEASE" }
      runtime "Release"
      optimize "On"
      symbols "On"

   filter "configurations:Dist"
      defines { "DIST" }
      runtime "Release"
      optimize "On"
      symbols "Off"
