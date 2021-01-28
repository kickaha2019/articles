The context at any point of script execution holds a HTML document, position
in that HTML document, and a set of variables with values.

Each time a script command executes it copies its context, modifies it
as appropriate, then passes that context on to the next script command.
