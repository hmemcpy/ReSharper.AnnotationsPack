@echo off
 
set version=0.0.1
if not "%PackageVersion%" == "" (
   set version=%PackageVersion%
)

set nuget=
if "%nuget%" == "" (
	set nuget=.nuget\nuget.exe
)

%nuget% pack ".\ReSharper.AnnotationsPack.nuspec" -NoPackageAnalysis -verbosity detailed -o . -Version %version%