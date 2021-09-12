# Description
# But what if you don’t know HTML? That’s okay too. Shiny was built for R 
# developers like you. It comes with a set of R functions that will build the 
# HTML that your app needs for you. In this video, we look at the R functions 
# that you can use to create a pleasing layout for your app.

# Transcription

# Let's look at the app that you made with HTML template. If you go to the 
# exercises folder, the class materials I have the model answer there in the 
# materials. The answer is in the document 16 Finance template and the place we
# probably won't start is the app. Dot our file here, we can see, we go use HTML
# template to call the index dot HTML file into that file. We're going bed slider,
# which will be slider input, we go, Bad plot which will be the plot output of our
# app. The server side apps, go work the same as it did before everything. Doing 
# here. Only applies to the UI when I run the app, will see what the app looks 
# like. And if I export into a larger window, we can see that we have a web page
# this time. The app is gray, so it fits into the scheme of the web page and the
# app does the same thing. It's always done. But this will clearly looks a lot 
# better than the apps that we've been making for the beginning portion of this 
# class. But what if you don't want to develop an HTML template to use for your 
# app because you don't know how to use web development tools? That's okay. Let's
# look at what you do. Now in the demos folder, I have an app we could start with
# Apps not very different than what we have been working on but you might not have
# that handy. So if we go back to the demos folder, And open o six basic app. You
# can see we have a basic app that makes a histogram with the delayed output. If 
# we look at what's going on over here, we have just our functions to create the 
# UI for the app, but if we take a look at some things in the console here, if 
# you were to take what we saved into UI and just print it at the console, you 
# can see that these functions are in fact writing HTML for you. Here's what's 
# being saved into UI. If you look at any of these functions individually such 
# as slider input, you can see that's returning HTML. This is what a slider looks
# like an HTML. And this is what an action button looks like an HTML. So, we've 
# already been writing HTML all along just by using our our code, let's take a 
# look at how we could capitalize on this. There are functions that do certain 
# specific things when it comes to laying out your UI. And it's time for us to 
# learn. What those are, are comes with the whole system of functions that builds
# the HTML of your UI, the input functions. You now know all return HTML. These 
# are important element of that system, the output functions. Also all return HTML
# their second element of the system of Functions that you can use to build your
# user interface. The other elements of the system include layout functions which
# position the elements of your app and certain layouts panel functions which 
# group multiple elements together into a single Group, which we call a panel,
# usually, use these in conjunction with the layout functions, there's layering 
# functions that allow you to stack elements on top of each other, the navigate 
# between them, this is a way to fit multiple elements into the same bit of real 
# state in the user interface. Of your app. And then there are formatting 
# functions. I let you change the actual appearance of any single element in your 
# app. These formatting functions closely track the style functions or the tag 
# functions that you would find in HTML, that's the system for building HTML UI 
# using our functions. And if you want back in counted, all the functions we look
# through. You'd see that there's over a hundred of them and we're not going to 
# go through every single one. But I am going to lay out a roadmap for you and 
# show you how you could use those functions to build your user interfaces. And 
# we're going to start right here with art. Out functions. In particular, we're 
# going to look at the functions fluid row and column the the most General layout
# functions, and you can use and make any sort of layout you like, Here's how 
# fluid rho works. You pass. Fluid rho as an argument of fluid page and it will
# insert an invisible division into your UI. That's the width of the UI. It's a 
# row. If you insert more than one fluid row, you'll have a second row below the
# first one and so on. And so on, if we take a look at the actual code that fluid
# rho returns we could see here That is just returning an HTML, div of the class 
# row. And if we put a fluid rho inside a fluid page, In fact, let's put multiple
# fluid Rose inside the page. We'd have Road divisions inside the page itself, 
# which is also a div and if you pass content into one of these fluid Rose, it's
# just past the character string. Hello. Fluid rho will position it into that div
# that the row describes. So we can lay out things in two rows. Now how big will 
# each row be as you go down the page? Well each row will expand its height to 
# fit, whatever is inside that row. And if there's nothing inside the row, the 
# hydro actually collapses. Do nothing. Boudreaux's are meant to be used in 
# conjunction with the column function. The way you use columns, you call it 
# inside of a fluid row, a column function, takes one mandatory argument and 
# also an optional argument the mandatory argument specifies, the width of the
# column, Now the width is measured in Twelfth of the page. The unit system here
# is base 12. So if you make a column with a width of 3 that call most span a 
# quarter of the page, because the page itself is 12 units wide. Now, what are 
# those units of the inches centimeters there? Nothing. It depends on however, 
# wide the window, your app, displayed in is the column will shrink and stretch 
# along with the window, but I'll always be 3/12 of the window wide or if you 
# had a calmness 5/12 would be I've talked to them the window. White. If you put
# multiple columns in the same fluid rho, The Columns will appear next to each 
# other going across the row. The widths of all the columns can only add up to 12.
# That's how many units fit in a row. The second argument to column, which is 
# optional is an Offset. You could have a column start a certain number of units
# into the row measured from the left hand side of the page. So a column of with
# for with an offset of eight will appear over at the end of that row of your Web
# page just like before these columns are returning HTML dividers. So let's make 
# a column of width six, I'll take the previous code use column make the width 
# six, I'm not going to put anything in that column, and we see that it just adds
# a different division with a different type of class. Now, it's a column with 
# six. If we put something in this Colony, put comma after the 6. And then now 
# we could write our hello It'll appear inside that column. Now, all of this just
# looks like tedious HTML, but when a web browser gets this HTML, it will know 
# where exactly in the page to put that word. Hello. If you look at what we're 
# doing with the rows and the columns, you can see we're actually creating a grid
# system. We could determine how far down a page something should appear by. Put
# it in the correct row and we could turn terman how far across the page. No man
# should appear by putting in the correct column. So you could arrange the X and
# Y coordinates of everything in your graph and relation, everything else just 
# by putting. Fluid row and column framework into your app. For example, we 
# could do something like this where we put a text input somewhere and we put a
# line or some text under it like this. If you don't use columns you put multiple
# things in a fluid rho. They'll just start appearing. One below each other in 
# that row. What I'd like you to do is to try this out. Open the basic app. It's
# in the demos folder saved us. Oh six basic app. Dot R. And then try to use 
# fluid row and column to arrange your app to look like this. This, if you get
# stuck, there's a model answer in the exercises section but give it a try first
# with fluid row and column think about how far across the page. Each of these 
# things are and whether they're appearing above other things or below them, or 
# in the same row.

names(tags) # to view all the html tags in R|whole html? 
