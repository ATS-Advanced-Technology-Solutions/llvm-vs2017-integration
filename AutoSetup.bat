@echo off
REM LLVM 4+ MSBuild 15 Integration
REM Creation Date: 07-11-2017
REM Update Date: 28-03-2017 
REM If you haven't received a copy of the LICENSe, See: Uol-NCSA License

set DP0=%~dp0

set VS_PROOT_DIR=%ProgramFiles(x86)%\Microsoft Visual Studio\2017\BuildTools\Common7\IDE\VC\VCTargets\Platforms

if not exist "%VS_PROOT_DIR%\." (echo Cannot find Visual Studio 2017 directory! & exit /b 1)

if not exist "%VS_PROOT_DIR%\Win32\PlatformToolsets\LLVM-vs2017"    (mkdir "%VS_PROOT_DIR%\Win32\PlatformToolsets\LLVM-vs2017")
if not exist "%VS_PROOT_DIR%\Win32\PlatformToolsets\LLVM-vs2017_xp" (mkdir "%VS_PROOT_DIR%\Win32\PlatformToolsets\LLVM-vs2017_xp")
copy "%DP0%\Toolset-llvm-vs2017-x86.props"      "%VS_PROOT_DIR%\Win32\PlatformToolsets\LLVM-vs2017\Toolset.props"
copy "%DP0%\Toolset-llvm-vs2017-x86.targets"    "%VS_PROOT_DIR%\Win32\PlatformToolsets\LLVM-vs2017\Toolset.targets"
copy "%DP0%\Toolset-llvm-vs2017-xp-x86.props"   "%VS_PROOT_DIR%\Win32\PlatformToolsets\LLVM-vs2017_xp\Toolset.props"
copy "%DP0%\Toolset-llvm-vs2017-xp-x86.targets" "%VS_PROOT_DIR%\Win32\PlatformToolsets\LLVM-vs2017_xp\Toolset.targets"

if not exist "%VS_PROOT_DIR%\x64\PlatformToolsets\LLVM-vs2017"    (mkdir "%VS_PROOT_DIR%\x64\PlatformToolsets\LLVM-vs2017")
if not exist "%VS_PROOT_DIR%\x64\PlatformToolsets\LLVM-vs2017_xp" (mkdir "%VS_PROOT_DIR%\x64\PlatformToolsets\LLVM-vs2017_xp")
copy "%DP0%\Toolset-llvm-vs2017-x64.props"      "%VS_PROOT_DIR%\x64\PlatformToolsets\LLVM-vs2017\Toolset.props"
copy "%DP0%\Toolset-llvm-vs2017-x64.targets"    "%VS_PROOT_DIR%\x64\PlatformToolsets\LLVM-vs2017\Toolset.targets"
copy "%DP0%\Toolset-llvm-vs2017-xp-x64.props"   "%VS_PROOT_DIR%\x64\PlatformToolsets\LLVM-vs2017_xp\Toolset.props"
copy "%DP0%\Toolset-llvm-vs2017-xp-x64.targets" "%VS_PROOT_DIR%\x64\PlatformToolsets\LLVM-vs2017_xp\Toolset.targets"
goto done

:done
echo Setup OK!
