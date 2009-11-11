# Css Push: Instantly push css changes to your browser(s) whenever you save.
See updates you make to css files appear immediately in all of your browsers without having to refresh.

# Limitations
* Install from source - github no longer hosting this gem
* Uses prototype.js for some trivial stuff. (consider breaking this dependency)
* Will not work in windows development environments 
* Currently is only available as a plugin to rails

# Getting Started

## Installing

    # -Install the gem-
    # THIS WON'T WORK - github stopped serving this gem
	sudo gem install tilleryj-CSS-Push
    # Run the pushify script to install css push into your rails app 
	pushify
	# call pushify from your view. Add this in the head of a view _after prototype.js_
	<%= pushify %>

## Start Servers
	# Start servers with css_push
	csspush start
	# you stop them later with 'csspush stop'


# That's it
That's it.  Load up the page in a browser and update the CSS file in your editor.

Now open up a different browser and update the CSS.  Now you can watch the effect of you CSS updates on multiple browsers without refreshing.


Copyright (c) 2008-2009 Thinklink LLC (Jason Tillery and Vishu Ramanathan)

