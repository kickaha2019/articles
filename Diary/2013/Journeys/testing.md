Because testing "Journeys" is tedious and repetitive I decided
to try some automated testing using [Cucumber](https://cucumber.io/) which I've been
using at work.

I opted to use Cucumber with Ruby, interfacing to the browser under test
using [Selenium](https://docs.seleniumhq.org).  There are good
alternatives like [Mocha](https://mochajs.org/),
or [Cucumber-js](https://github.com/cucumber/cucumber-js).  My choice
was based on what I knew and was comfortable with.

The output of the Cucumber tests are
[here](/Users/peter/Sites/Games/Journeys/resources/cucumber.html).
Warning - or perhaps not a warning.  The tests contain the
solution of the puzzles in the game.

Installed [XCode](https://developer.apple.com/xcode/) and then the command-line tools (which you do from
inside *Xcode / Preferences / Downloads*).

Installed Ruby Version Manager [rvm](https://rvm.io).

Using [rvm](https://rvm.io) installed Ruby 1.9.2 using the command *rvm install 1.9.2*.
Set 1.9.2 as the default Ruby by command *rvm default 1.9.2*.

Installed the [Cucumber gem](https://rubygems.org/gems/cucumber) by the command *gem install cucumber*.

Installed the [rspec gem](https://rubygems.org/gems/rspec) by the command *gem install rspec*.

Installed the [Selenium gem](https://rubygems.org/gems/selenium-webdriver) by the command
*gem install selenium-webdriver*.

Here is the start of the feature file as it stood at the time of
writing:

~~~
false
false
false
true
false
false
true
false
false
false
true
~~~
So in the scenario what we want to happen is the browser
be started, the menu page for the game displayed, then clicks
be simulated on a number of text strings, then we verify we see
an expected text.

There is an art to writing good feature steps.  A challenge here
is not to end up with scenarios which are hundreds of lines long.
Compromises have to be made.

So the feature steps have to be wired up using step
definitions.  For the step:

~~~
false
false
~~~
The step definition is:

~~~
false
false
false
false
true
~~~
Where *open_menu* is a method added to the World.

For the step:

~~~
false
false
~~~
The step definition is:

~~~
false
false
false
true
~~~
Having got our step definitions we then need to wire those up
to the browser using Selenium.  So the method *open_menu*
is implemented as:

~~~
false
false
false
false
false
false
false
false
~~~
where we pass the file location of the game's index.html
page as an environment variable.

We need the *x_offset* and *y_offset* data to work out
locations relative to the container holding the game
elements.

If the Javascript code under test in the browser raises a
Javascript *alert* this hoses *Selenium* pretty
thoroughly.  So avoid doing this.

The state of the data inside the browser can be volatile
between calls into *Selenium* from the Ruby code.  The
test code has to allow for pages needing time to load,
or Javascript running during test execution say on a timer.
You might get *Selenium::WebDriver::Error::StaleElementReferenceError*
being thrown if the Ruby code has a handle on an element
which gets deleted inside the browser.

The tests took a long time to run for a number of reasons.
I was walking over the elements in a webpage using Ruby code
which meant a lot of Selenium talking to the browser.  Faster
would be to do this in Javascript with a single Selenium
browser interaction.  There were delays in the game Javascript
code (to prevent duplicate clicks for instance) and these
could be minimised when testing.
