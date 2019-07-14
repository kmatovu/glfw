project "GLFW"
  kind "StaticLib"
  language "C"

  targetdir ("bin/" .. outputdir .. "/%{prj.name}")
  objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

  files
  {
    "include/GLFW/glfw3.h",
    "include/GLFW/glfw3native.h",
    "src/glfw_config.h",
    "src/context.c",
    "src/init.c",
    "src/input.c",
    "src/monitor.c",
    "src/vulkan.c",
    "src/window.c",
    "src/xkb_unicode.c"
  }

  filter "system:linux"
    staticruntime "On"
    pic "On"

    files
    {
      "src/x11_init.c",
      "src/linux_joystick.c",
      "src/x11_monitor.c",
      "src/posix_time.c",
      "src/posix_thread.c",
      "src/x11_window.c",
      "src/egl_context.c",
      "src/glx_context.c",
      "src/osmesa_context.c"
    }

    defines
    {
      "_GLFW_X11",
      "_CRT_SECURE_NO_WARNINGS"
    }
