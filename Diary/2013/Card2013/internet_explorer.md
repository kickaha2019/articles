#title 4:Internet Explorer
#date 24th November 2013
#markdown
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
var c = document.createElement( "canvas");
if(typeof G_vmlCanvasManager  != 'undefined' )
{
	c = G_vmlCanvasManager.initElement(c);
}

~~~
To get a canvas element in *c*.
