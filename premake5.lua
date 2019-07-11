project "GLFW"
  kind "StaticLib"
  language "C"

  targetdir ("bin/" .. outputdir .. "/%{prj.name}")
  objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

  files
  {
	"src/wl_init.c",
	"src/linux_joystick.c",
	"src/wl_monitor.c",
	"src/posix_time.c",
	"src/posix_thread.c",
	"src/wl_window.c",
	"src/egl_context.c",
	"src/osmesa_context.c"
  }

  defines
  {
	  "_GLFW_WAYLAND",
	  "_CRT_SECURE_NO_WARNINGS"
  }

  filter { "system:windows", "configurations":"Release" }
    buildoptions "/MT"
