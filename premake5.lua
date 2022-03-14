include "PremakeDependencies.lua"

project "yamlcpp"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "Off"

    targetdir ("bin/" .. ConfigOutputPath)
    objdir ("bin-obj/" .. ConfigOutputPath)

    configmap {
      ["Debug"] = "DebugStatic",
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

    filter "configurations:Debug*"
      runtime "Debug"
      symbols "On"

    filter "configurations:Release*"
      optimize "Speed"
      runtime "Release"
