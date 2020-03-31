It's useful to display some information on a map. On my website
for instance the places Virginia and I have seen are listed
at [Wish List Map](Map). Previously this was implemented
using a free account with Google's Javascript API, but Google
announced they would only support billable accounts in the
future. Google are a business, it was kind of them to make this
API available free for so long, but time for a change.
Inspired by a [page](https://bost.ocks.org/mike/map/) I found
surfing the web I decided to try another more primitive
approach.

# Data sources
To display maps you need base data for where cities or roads or
coastlines and the like are. Happily there's a lot of free stuff
out there. I'm currently using data from [Natural Earth](http://www.naturalearthdata.com/),
[OpenDataNI](https://www.opendatani.gov.uk/), and
[Ordnance Survey](https://www.ordnancesurvey.co.uk/business-and-government/products/opendata.html).
Base data is available in a number of formats including [ESRI](https://www.esri.com/en-us/home) shapefiles and
[GeoJSON](https://gist.github.com/sgillies/1233327).

Particularly to create test data [geojson.io](http://geojson.io/) is
a useful site.

# Transforming the base data
There's a number of transformations which can be applied to the
base data before displaying it on a map. The coordinate reference
systems need to be changed to the one to use for display, otherwise
things will be in the wrong place. It's useful to clip the data
to the area to be displayed. It's also useful to simplify the data
to the resolution needed, and to reduce the data if it contains
items not be displayed.

To achieve the coordinate transformations I used the
[GDAL toolkit](https://gdal.org/index.html), in
particular the [ogr2ogr](https://gdal.org/ogr2ogr.html) utility.
I did try this for clipping and simplification, but for me
it behaved oddly.

# Generating SVG for display
Still working on this. The idea is to convert [GeoJSON](https://gist.github.com/sgillies/1233327) into
[SVG](https://www.w3schools.com/graphics/svg_intro.asp), and include that [SVG](https://www.w3schools.com/graphics/svg_intro.asp) into the webpages.
