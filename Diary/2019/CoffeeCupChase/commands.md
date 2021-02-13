#markdown
The following commands are used to define the logic and text in
*'Mug. Missing.*. The DSL for the game is simple-minded
so not a general-purpose language. It was designed for this
one game alone.

Command|Description
-|-
after|If a result is taken the text specified by an after command will be inserted into the new scene description
before|If a choice is active the text specified by a before command will be inserted into the current scene description
choice|A choice that can be taken in a scene
debug|List internal Twee variable value on each page for game entity like choice etc
dialogue|A list of prompts and responses that must be exhausted before any choices
goto|Scene to go to in a result
prompt|A prompt in a scene or dialogue for having to chose an option
option|A choice for a dialogue or in a scene
response|A response in a dialogue to an option chosen
result|Define result of taking a choice
scene|A scene in a world with a description possible dialogue and choices
set|Set a variable for text substitution
text|Define some text
world|A group of scenes
