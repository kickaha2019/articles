@title		6:Preloading
@date		12th December 2013
@markdown
A late fix was done for the Finale screen, where the soft
toys would start appearing before the screen was visible.
This problem was made worse by how long it takes to load
all the images for the Finale screen in particular.

Preloading was introduced to the code which after
a screen is fully displayed then seeks to load some
images in the background to speed up moving to the
next screen when that happens.  We rely on the browser itself
caching images, and loading them behind the scenes.

I did think about reducing the size of some of the
images by converting the PNGs to be JPGs, and in
Javascript doing some editing.  Silly idea.  The
Christmas tree on the final scene was two PNGs but
I merged it with the background to give two smaller
JPGs.
