# [churchservice.net](http://churchservice.net)

This site enables you to browse christian churches and filter them by denomination
based on OpenStreetMap data.
It is functional but not very smooth.

Note that filtering only works on preloaded data,
not the dynamic queries that can be enabled at the bottom,
and preloading can require a significant amount of time, memory, and traffic.

## Setup

Install `npm` and `sass`, for example on arch:

    sudo pacman -Syu dart-sass npm caddy

``` sh
npm install
sass .
```

Run a webserver from the local files, for example:

    caddy file-server --listen :8888
    
https://caddyserver.com/docs/quick-starts/static-files

To deploy the site, setup the repository remotely 
or upload the relevant files as mentioned in `make deploy` in the Makefile.

Due to their filesize, the registers are checked in using `git lfs`.

## References

Using:
- https://github.com/plepe/OpenStreetBrowser/blob/master/doc/Icons.md
- https://github.com/Leaflet/Leaflet.markercluster

Inspirations:
- https://www.openstreetbrowser.org (defunct: own instance at https://unternehmer.land/osb/ and https://unternehmer.land/ol)
- https://github.com/FacilMap/facilmap

## Todo

- Integrate live overpass with cached geojson
  + filtering only works for preloaded datasets so far, not overpass queried contents
  + inconsistent formatting
- Update geojson automatically from Overpass / local planet file
- Icon Submenus
- Usage Tutorial

## Business Data

Running at https://unternehmer.land

### OSM

- craft: https://wiki.openstreetmap.org/wiki/Map_features#Craft
- office: https://wiki.openstreetmap.org/wiki/Map_features#Office
- shop

### Handelsregister

to https://www.onosm.org / inquire about bulk data entry

https://www.wikiwand.com/de/Handelsregister_(Deutschland)#Abteilungen


## Legacy GdiB

*O*nline *Go*ttesdienst - Rework für [Gottesdienste in Berlin](http://gottesdienst-in-berlin.de)

### GdiB Brand colors

- blue: #2FC2FF
- orange: #E96A3B

### [Overpass Query](https://overpass-turbo.eu) for Churches

```javascript
/*
This has been generated by the overpass-turbo wizard.
The original search was:
“amenity=place_of_worship and religion=christian”
*/
[out:json][timeout:25];
// gather results
(
    // query part for: “amenity=place_of_worship and religion=christian”
    node["amenity"="place_of_worship"]["religion"="christian"](52.274880130680536,12.9254150390625,52.73462861156322,13.830413818359375);
    way["amenity"="place_of_worship"]["religion"="christian"](52.274880130680536,12.9254150390625,52.73462861156322,13.830413818359375);
);
// print results
out body;
>;
out skel qt;
```
