;msbuild Xamarin.Forms.GoogleMaps.sln /t:Clean;Build /p:Configuration=Release

del *.nupkg
nuget pack
nuget.exe push -Source "AppsoluTaxi" -ApiKey VSTS *.nupkg
