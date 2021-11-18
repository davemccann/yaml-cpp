include "PremakeDependencies.lua"

project "yamlcpp"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"

    targetdir ("bin")
    objdir ("bin-obj")

    configmap {
      ["Release"] = "ReleaseStatic"
    }

    includedirs {
      "include"
    }

    files {
      "include/**.h",
      "src/**.cpp",
    }

    filter "platforms:x64"
      system "Windows"
      staticruntime "On"

    filter "configurations:Release"
      optimize "Speed"
      buildoptions "/MD"
