# btw
Bash Tool Wrapppers
------

This project contains a number of useful bash scripts that allow for cross-platform execution of common tools, such as MSBuild / XBuild, Nuget, Paket and etc.

The point is that some of the tools are not as easy and inthuitive to call directly under a given OS, because, for example, they are Windows-specific (which requires use of mono/wine on a non-Windows OS), or have different names under the different OS-es (for instance MSBuild's analogue on Linux is called xbuild).

At this stage, the wrappers are not-perfect as they do not trully support the possible platforms, but handle our own cross-plaform matters. Exposing them into this repository is aimed to enhance their maintenace and future improvement, and to potentially allow others to benefit from what they can offer.

### Suggested Usage

- Add as a submodule to your project
- Refer to the respecive wrapper trough its submodule path. For example
      
      git submodule add https://github.com/virtual-dimensions/btw.git btw
      ./btw/msbuild.sh /t:Rebuild
