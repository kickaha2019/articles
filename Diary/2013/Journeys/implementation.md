The game is defined in a set of text files which are compiled into
Javascript.  The text files give the content of
the scenes of the game.  An example:

~~~
VIEW( "Start",
	BOW(
		GRID( {:x=>40, :y=>30, :dx1=>0, :dy1=>100},
			BIG_TEXT_BUTTON( "buttons/about.png", "About"),
			BIG_TEXT_BUTTON( "buttons/help.png", "Help1"),
			BIG_TEXT_BUTTON( "buttons/new_game.png", "New game"),
			IF( TEST( "Started"),
				BIG_TEXT_BUTTON( "buttons/decks.png", "Decks")
			),
			IF( AND( TEST( "Started"), TEST( "Complex")),
				BIG_TEXT_BUTTON( "buttons/calculator.png", "Calculator")
			)
		)
	)
)

~~~
The above example defines the first screen of the game.  The above is
actually *Ruby* code, *VIEW* and *BOW* and the other nmes are
Ruby methods.  The Ruby data structures are compiled into
Javascript which at runtime will add appropriate HTML elements to the
DOM for the game.

The visual elements can be defined as layers in a PSD Photoshop
file.  The compilation process splits up the PSD file into JPGs
and PNGs for the web.  This feels like a cheap way of laying
out scenes to me, to do it inside Photoshop Elements.
