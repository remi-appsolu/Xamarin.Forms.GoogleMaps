#!/usr/bin/env bash

echo "Replace $(SolutionDir) to .. in .csproj"
perl -pi -e 's/\$\(SolutionDir\)/../g' ./XFGoogleMapSample.Droid.csproj
perl -pi -e 's/\$\(SolutionDir\)/../g' ../XFGoogleMapSample/XFGoogleMapSample.csproj

echo "Copy Variables_sample.cs to Variables.cs"
cp ../XFGoogleMapSample/Variables_sample.cs ../XFGoogleMapSample/Variables.cs

echo "Inject Google Maps Android API Key"
perl -pi -e "s/your_google_maps_android_sdk_api_key/$GOOGLEMAPS_ANDROID_API_KEY/g" ../XFGoogleMapSample/Variables.cs
