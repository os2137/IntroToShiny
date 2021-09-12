# Description

# So far our apps have been very minimalist, but Shiny apps can be quite 
# attractive. In this section, you’ll learn the best ways to customize the 
# appearance of your apps.

# Transcription

# Take a look at these few shiny applications that I've borrowed from this online.
# Shiny showcase new set. These applications look very nice. They're certainly much
# more polished than the simple applications. We've been building in our course 
# until now, but that's about to change in the last part of this course, we're 
# going to look at how to build the UI of your shiny app. This is the user 
# interface. The thing that you've users will see will learn how to make your 
# apps look intelligently. Thought-out laid out, nicely will change the appearance
# Since in short, you'll learn how to make an attractive, enticing shiny app to 
# do this, it will help to think about how shiny apps are designed. Remember I 
# said before that behind every shiny app, there's a computer running the, our 
# side of the, a pain in a server like fashion that computer provides, an HTML 
# document to your users web browser and the web browser, and it's that into a 
# nice-looking shiny app inside that HTML document. There are components that 
# the server computer passes to the document for your viewer to see your viewer. 
# Can pass input back to the server and the server will re update those, those 
# are components, send them back to the HTML browser. That's how shiny app works
# in this whole system comes together because the actual shiny app itself is just
# an HTML document. If you were to look at the application that you're exploring,
# it is written in HTML is designed to be hosted over the network. Displayed with
# a web browser, in other words, to create the UI for your shiny apps, you really
# need to create an HTML. I'll document that's what's behind every shiny app. So
# if you look at one of the asset, we have here, here's the UI for our Simple app,
# we've written it, completely with our. But behind the scenes with the ab C's, 
# is this a bunch of HTML. Now, don't try typing this into your console. There's 
# some format needs to go on. This would just end up being a completely 
# misunderstood less than sign with much of things after it, but when your users
# web browser gets to shiny app, they're reading this actual HTML. But what if 
# you don't know how to program an HTML? Shiny is written for our developers.
# We don't expect you to know HTML when I started using shiny. I didn't know very
# much about HTML HTML is easy to learn, but it's quite tedious and it might not 
# be worth your time to invest in studying it shiny is designed so that you can 
# use our functions to create the HTML, that's necessary. You don't need to think
# about the HTML on the other hand. If you do know how to program, a student HTML,
# you could use those skills to build your shiny apps when it comes down to it. 
# There's about three different ways that you could build your shiny apps. The 
# first way is you could use HTML to write the HTML components of your app, the 
# user interface, and then you can use our to write the shiny components. The 
# parts that are built with. Our this is ideal, this is a perfect setup because
# then you could use HTML development tools. Dreamweaver, you know what have you
# to build the user interface and then use our to build the ark components. The
# next way to build your shiny app is Right, everything in HTML, you could even
# write The Shining components in HTML. I'm not going to go This way in the course,
# because I think it's a bad idea. Will recover the first method here, the one 
# I'm calling HTML templates, you'll see that this is so easy and so simple that
# you wouldn't want to try to, right? The shiny widgets and stuff for Pure HTML,
# but this is out there. And later on, when I show you the shine Development Center,
# you can learn more about this method. If that sounds appealing to you, 
# but personally, I think it's a bad idea. There is one last method the most 
# common way to write shiny apps and that's the right, everything with, are you
# write the HTML user interface using our function? Hands. And then you write The
# Shining components using our and we'll spend some time looking at that as well.
# For the remainder of the section. We'll start by looking at the protocol HTML 
# templates. That's where you use HTML development tools to build your user 
# interface, and then you insert into that, the are components that make it is 
# shiny. And then we'll look at how to use our to build your user interface. 
# There's a whole system of functions that come in shiny that are designed to 
# lay out an attractive Pleasant app, and write all the HTML you need for you 
# and we'll spend some time learning that system. If you want to study the 
# second method, I'm not going to go over the Best place to start is look at 
# this article right here. Is that shiny.rstudio.com and explains how to write
# everything from HTML?



