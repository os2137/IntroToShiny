# Description
# You can optimize your apps by thinking about how a Shiny server would host your 
# app once it is finished.

# Transcription
# You now know all of the functions that you need to know to use shinies reactive
# framework. You can make all the different types of reactive objects that shiny 
# can make and you can use them to do different interesting tasks like tracking 
# data or doing linked brushing or delaying reactions that sort of thing. So, 
# before we end the section on shinies reactive framework reactive programming. 
# I want to offer some advice to help you make apps that work fast and quickly 
# and are responsive to your users needs. And the one piece of advice is to just
# Avoid repetition, you're not there to control what happens in your app. So when
# you first create your app, you have to write it in a way that ensures that the
# things that happen in your app. When you're gone are, only the things that need
# to happen when the user does the change. The way to avoid unnecessary repetition
# is to think about how a shiny server would host. The app, I explained before,
# which shiny server does it make sure that everyone has our resources when they
# visit the app to guide their app experience? And then it closes down those 
# resources when they leave. This creates sort of a hierarchy of, you know, 
# things happening with the app on the server and that hierarchy can help you 
# structure your code in the most efficient way. If you look at a small simple, 
# shiny app, We're any shiny up. They'll have the same parts. Will use a simple
# axis easy to see the parts you could look at the code over here on the right 
# in everything that appears outside of the server function will be run One Time
# by shiny server. Every time it starts a new our session This is the stuff that
# sets up the our session to do, what it needs to do the code that loads the 
# libraries that you'll be using or also importantly the code that sets up the
# user interface for your shiny app, you only need to set that up once for our 
# session and everybody that comes to that our session can use the same user. 
# Interface shiny will send it out to their web browser and then they'll see the
# app as it's supposed to look. So if you have code that only needs to be 
# one-on-one spur, our session to set up the our session like loading a library.
# Be connecting to a database for that sort of thing. Do it outside of the server
# function. this is also a good place to Source helper scripts and other are files
# that you'll be using Now, the code inside the server function will be run more 
# often. It will be run once per user. So multiple users can use the same our 
# session but when each new user shows up, they're going to need their own server
# process. So this code will be out in once per user. So only put things inside 
# this code, that you actually need to run uniquely one time per user. So if each
# user gets their own connection to the database, maybe you're collecting a 
# password, and using that to log into the database, you'd put that code inside
# the server. But code, incisor function does Get Dangerous. This is where you 
# really need to be precise about what you're doing. Because some of the code 
# inside sir, functional be run much more often than the rest of the code. And 
# that is code, that appears inside a reactive function, especially the render 
# functions. So, you might have one user Make many many changes and anytime that
# user makes a change, the code inside the render functions, or inside the 
# reactive functions will be run again and again and again, So, think about the 
# code in your recipes that code will be run more often than anything else in your
# app as a result, you should put as little code in your recipes as you need to 
# place. Their only put the code, that gets the job done. Things that set up the
# job, but don't need to happen each time you draw the new plot. You could put 
# in a reactive expression or maybe even outside of the reactive expression, but
# try to migrate it outside of the actual recipe that gets run each and every 
# time because Everything that gets run there, it's going to take some 
# computational resources and take some time, and you don't want to to use 
# those resources unless it's absolutely necessary. So, these are the three 
# levels of your shiny app, and if you think about how they work and what your 
# code supposed to do, then you can place your code where it used to be, to make
# your app run as fast as possible. So, we've covered, the reactive programming 
# section of shiny. When we come back in the next part, we'll start to look at 
# the user interface of your app. That would be how your app looks. I'll see you
# there.