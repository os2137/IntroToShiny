# Description

# Want to be a Shiny UI power user? Use your favorite HTML development tools to
# build the UI for your app. This video will show you how to easily embed the 
# Shiny output objects into the UI.

# Transcription
# The easiest method for building a shiny UI, if you happen to know HTML is 
# called HTML templates, I call it that because it relies on the function known 
# as htmltemplate that comes in the shiny package. Here's how the method works. 
# Do use HTML templates. You first write a web page. That's an HTML document. 
# This is a web page, like any other webpage, you would make you can write it 
# with raw HTML or you could use some web development software to create the HTML
# for you. You could add CSS styling to the webpage. You got javascript's. You 
# could do anything that you would do, with the web page in the normal way right
# here, to create the UI for your shiny app. Now, into that web page. You'll want
# to embed our components, the things that shiny generates, and the things that 
# become reactive later, The method for doing. This is very simple inside your 
# web document inside of pairs of curly braces. You add, either our code or the
# name of our objects that you want to insert into that location of your webpage.
# So here, the blue text in between the two pairs of curly braces contain either 
# are functions like head content or bootstrap Library. Those are two functions 
# that do some specific. I'll tell you about them in a second or plot and slider
# which will be the name of our objects or arguments. After you've done this, 
# then you call the htmltemplate function in your UI. You give it the name of 
# the HTML document that you've created. So this document here on the right, 
# let's pretend I saved it as template HTML and then if you use any arguments in
# it like plot and slider, you set those as arguments of, htmltemplate the 
# function, and you give those arguments the our code that generates them. So
# for example, plot right here is going to be the plot output with And Sliders
# going to be a slider, a slider input. And that's how those things will end up
# in your web page. Notice that we're not using fluid page anymore. Htmltemplate
# takes the place of fluid page. The entire UI is basically your htmltemplate 
# the functions, head content and bootstrap library, or bootstrap lid, common 
# shiny, and they insert the sort of boilerplate CSS and also other types of 
# code that shining normally puts into your web pages that you wouldn't put. 
# It in when you're developing a web page with web development software, if you
# call both of these in the header of your document, then that code will appear
# there in your, your webpage will be able to function like a shiny app. So I 
# always put them in there just, you know, as a force of habit and you should 
# too. Let's take a look at how you could use HTML templates to build a shiny 
# app. In the demos folder, the class material I've included in, htmltemplate 
# to look at. So let's go to our studio and take a peek. The template is saved,
# as O7, education template, the demos folder. And if you open that direct, 
# you'll notice you have many things in here. One of them is a file called app 
# dot are. So I'll open that this is my shiny app. And right now the shiny app 
# is set up to be a regular shiny app, you know. So I'm using fluid page, I could
# run the app and we'll take a peek at what it looks like. So our basic app, but
# I've used some coloring here in the histogram because the web page, I'm going 
# to start this in, has a red color scheme and I want the histogram to Look like
# it belongs. Other than that, this app does everything we've come to expect from
# our Simple app so I'll stop that. The next important file in the, in this demo
# is called index.html. This, we can open in our editor, is an HTML file that 
# contains everything we need to make a webpage. A fairly sophisticated web page
# alongside index.html. Are other files, that a web browser. Would use, when it
# builds this website, we have some other HTML escaping certain there, we have 
# some png's, those are images, and then the www folder. We have some CSS styling,
# some Java. Apps and whatnot. If we look in index.html, we have pairs of braces.
# Inserted within the document, here in the header, we have some braces, are go 
# call the our function head content, and the bootstrap lived function. And then
# if we search through file command, F, could find the other braces. We have a 
# some braces that call slider and some braces at call plot and that's it for 
# this document, everything else is HTML. There's quite a bit of it. Notice that
# when you call our code between these braces, As much art could as you like 
# between the braces, but it's sort of like calling in our function, only the 
# last line of code will actually be run in inserted into your webpage. As a 
# result is pretty common. Practice to just call one line of code per pair of 
# braces. When we render this document, shiny will run this code and insert it 
# into the documents. Make a finished web page, written completely in HTML. But
# before we could do that, we need to align our app that our file in this 
# index.html file. Here's how we do that. Instead of calling fluid page will call
# htmltemplate. And then we'll tell htmltemplate the name of the file that 
# contains the actual HTML. We want to build the app around this case that's 
# index dot HTML and xhtml is designed to use something called site or in something
# called plot. So we need to define those as arguments of htmltemplate. Slider 
# will be the slider that's in our Simple app and plot will be the plot. Now, 
# when I run this app, it will go fetch the HTML and xhtml insert into it. These
# are components and use that as a user interface for app. Everything on the server
# side works exactly as it did before, and we don't even have to touch that. Let's
# run the app. Here's the app. Here's how it looks. I'm going to open it in 
# external web browser, so we could take a peek at it. So this template, or this 
# index.html is written by my colleague at rstudio Nathan Stevens and you can see,
# put a quote from himself in here, in other things. And this template really is 
# a web page, and it functions like a web page. We have a form down here. We could
# use, that's all HTML base. Some submit buttons, the things that you'd want in a
# web page, but right here in the middle of it, we've embedded our shiny 
# application. We could design this application so it does something useful. 
# That visitors of this website would probably like to see and it fit right in 
# here and you might not even notice that first. So that's not an element of the 
# web page. Also, we could link to other Pages using the links of our webpage. 
# When you build an HTML template like this, it's important that you structure 
# your app, directory in a sensible way, you should put the HTML that you're 
# using as your template. In the last example, that would be the index.html file
# in this slide. I'm going to call the template HTML file. You should put that at
# the top level of your app directory, right? Next to your server that our new UI
# dot our files or alternatively, your app, got our file, you can put any other
# helper files you want in that directory to that you can use to build your web 
# page you Also, likely want to consider putting a www folder in your directory.
# This folder with the name. Www.the shiny server will treat in a special way. 
# The items that are in that folder. It will share with your users web browser.
# Let me enter user will get a copy of these things and this would be the sort 
# of things that your users web browser needs to build the web page. It might be
# CSS and might be images, that sort of thing. The other elements of your app, 
# directory won't actually be shared with the user, they won't see your our code,
# and they won't see your data sets. If you keep Them there. But anything in 
# www will be sent over to users web browser. If you don't want to use HTML to
# write your entire user interface, you could still use the same approach to 
# create this chunks of your user interface. So, for example, here I'm using 
# fluid page to build a user interface and I have this small chunk of HTML on 
# the right hand side of the page that chunk of HTML, wouldn't build a complete
# web page, but I can insert it into the user interface, in my shiny app, using
# htmltemplate by calling htmltemplate as an argument of fluid page. I give it 
# the name of the chunk that I want to insert that place of my UI and then I said
# any arguments I need you to fill out the are components of that chunk. Okay, 
# let's give this process a try. Would I would like you to do is go to the demos
# folder and open. The demo O8, Finance template app. Dot R, this is similar to 
# what I just did with the education template but the finance template, looks a 
# little different. Once again, you'll be using a slider in a pot and once again
# the actual HTML file that we're going to use is called index.html. It's also in
# the finance template folder, open index.html, search through it, see if you can
# spot, Taught the curly braces. For we're embedding our components. And then 
# once you've done that rewrite, a petard use htmltemplate and index.html to make
# your app, then load your app and see what it looks like to get the most out of 
# your app. You might want to pop it out of the viewer Pane and rstudio and look 
# at in a true web browser. Once you've done that come back and we'll look at 
# other ways you can build shiny user interfaces,


