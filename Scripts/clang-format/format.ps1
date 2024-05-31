# Format the source directory of unreal project.
# Make sure the clang-format tools have been installed correctly.

# Get git root directory and source directory path.
$GIT_HOME = git rev-parse --show-toplevel
$GIT_PROJECT_SOURCE = $GIT_HOME + "/CustomCameraSystem/Source/"
# Target file types.
$TargetFileRegexs = "**.cpp", "**.h" 

# Format the target files by full path name.
$TargetFileRegexs | 
ForEach-Object {
    Get-ChildItem -Path $GIT_PROJECT_SOURCE -Filter $_ -Recurse | 
    Where-Object {
        clang-format -style=file -i $_.FullName
    }    
}

