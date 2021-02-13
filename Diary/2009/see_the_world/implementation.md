@markdown
There were two different implementations of the game planned, one using server-side [PHP](https://php.net/) scripts, the other using Adobe [Flex](https://www.adobe.com/products/flex.html) with ActionScript scripting.  Currently the PHP version is well ahead of the Adobe Flex version.

The game state in the PHP version can be saved by saving the bookmark.  The URL contains the game state (it actually contains all the choices made, and the game state is regenerated from that.)  So the PHP version is REST-ful not that is anything to cause players worry.  The Flex version would have saved its state automatically on the client.

The game was scripted in a home-brew language named Henge for CYOA style games.  The process of producing software interests me as much as the finished result.  Henge was deliberately restrictive and limited, partly to simplify its programming, partly as I wanted to produce simpler games.
