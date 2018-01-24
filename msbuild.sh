# A cross-platform wrapper around the MSBuild functionality
if [ -z "$msbuild" ]; then
  if [ "$(uname)" == "Darwin" ]; then
    msbuild='MSBuild'
  elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    msbuild="xbuild";
  else
    msbuild="\"/C/Program Files (x86)/Microsoft Visual Studio/2017/Community/MSBuild/15.0/Bin/MSBuild.exe\"";
  fi
fi

eval "${msbuild} $@"