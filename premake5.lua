include "PremakeDependencies.lua"

project "yamlcpp"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"

    targetdir ("bin")
    objdir ("bin-obj")

    configmap {
      ["Release"] = "ReleaseStatic",
      ["Debug"] = "DebugStatic"
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

    filter "configurations:Debug*"
      runtime "Debug"
      symbols "On"

    filter "configurations:Release*"
      optimize "Speed"
      runtime "Release"
