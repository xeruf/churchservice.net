## Setup

Install `npm` and `dart-sass`, on arch:

    sudo pacman -Syu dart-sass npm caddy

``` sh
npm install
sass .
```

Run a webserver from the local files, for example:

    caddy file-server --listen :8888
    
https://caddyserver.com/docs/quick-starts/static-files

## Internals

*O*nline *Go*ttesdienst - Rework für [Gottesdienste in Berlin](http://gottesdienst-in-berlin.de)

## GdiB Brand colors
- blue: #2FC2FF
- orange: #E96A3B

### [Overpass Query](https://overpass-turbo.eu)
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

### Business

https://wiki.openstreetmap.org/wiki/Map_features#Craft

Businesses:
craft
office
shop

Handelsregister to onosm.org

https://www.wikiwand.com/de/Handelsregister_(Deutschland)#Abteilungen
