
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

    defines {
        "YAML_CPP_STATIC_DEFINE"
    }

    filter "platforms:x64"
      system "Windows"

    filter "configurations:Debug*"
      runtime "Debug"
      symbols "On"

    filter "configurations:Release*"
      optimize "Speed"
      runtime "Release"
