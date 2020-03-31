In most browsers if you create a *HTML5 canvas* element in
Javascript you get a canvas element with all the needed behaviour.
Not of course so in Internet Explorer.  If one is being paranoid
one would say Microsoft is trying to force everyone to use their
non-standard APIs in the hope of locking people into Microsoft
software.  But for whatever the reason one needs to add code
yet again to make things work on Microsoft.

In Microsoft land one has to call *G_vmlCanvasManager.initElement*
on the new Canvas element to give it the Canvas behaviour.
So I'm using code like:

~~~
false
false
false
false
false
true
~~~
To get a canvas element in *c*.