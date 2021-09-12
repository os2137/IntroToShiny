# USE
# render() to make an object to display in the UI. 
# reactive() to make an object to use in downstream code.
# isolate() to return a non-reactive object. 
# eventReactive() to delay a reaction.
# observeEvent() to trigger code.
# reactiveVales() to make your own reactive values. 

# observe() also triggers code to run on the server. Uses
# same syntax as render(), reactive() and isolate()
# observe({rv$data <- rnorm(input$num) })
# observe takes a dependency on every reactive value  in the code chunk
# returns entire code chunk when invalidated
# The effect of observe is same as observeEvent and you dont 
# get anything back yourself to use so that code shouldnt return a value 
# but it should do something useful
# The only difference between observe and observeEvent is that
# how it takes dependencies. 

# Description
# When you write an R script, you get to decide exactly what 
# gets run when; but when you write a Shiny app, you 
# give up a little of this control to your user. As a result, 
# you need to think hard about how to use side effects, actions
# performed by a function that affect the state of your program.
# This video introduces side effects and provides the 
# background information that you will need to understand the 
# key to writing good Shiny apps.

# Transcription
# Now that we've finished the app, let's add our two new 
# functions to our crib sheet. We have observe event to trigger
# code, and we have reactive values to make your own reactive 
# values. There's also one other function that's very similar 
# to observe event that we should cover before we move on. 
# And that's observe, observe creates an observer just like 
# observe event does, but the syntax of dependencies and 
# observe is a little different with observe, you just give it
# a code recipe and then shiny will Through that recipe and 
# take a dependency on any reactive value that appears in the 
# recipe. This is very similar to how a reactive works and how
# render print and render plot and all those things work. So, 
# observe takes the dependency on every reactive value in the 
# code chunk. And then when any of those values change observed
# is go rerun that code, the entire chunk. So, again, the effect
# of of observe is the same as observe event, it's go trigger
# some code to run on the server side. You don't get anything
# back yourself to you. Use so that code should not return a 
# value, but it should do something useful. The only difference
# between absorbance our event is how it takes us dependencies.
# So let's add that to our crib sheet, observe event or observe
# to trigger code. and then, if you compare the syntax above 
# Observer vents reactive, you'll see that it uses the same 
# sort of dependency structure. And if you compare the syntax 
# of observe event to event reactive, you'll see that they use
# the same dependency structure. So, what we really have are 
# two bites at two different apples. You could create reactive
# expressions and you can create observers. And for each of 
# those, you could either let shiny implicitly build the 
# dependencies or you can explicitly state, which values 
# should be dependent yourself. This table shows you how to 
# do that. The table is also very important for another reason.
# If you recall that I term, some shiny objects, reactive 
# objects, the functions that make reactive objects are the 
# four functions in this table. You have observe event and 
# observe and reactive and event reactive the all put 
# together, some sort of object that does something special 
# in a shiny app for reactive and event reactive you actually 
# see the object, you save it to a name, you could call later 
# for observant and observe. You don't see the object. Its 
# Created and it's there inside the environment, the shiny app
# and it does its job and you don't really mess with it. One 
# thing that you'll want to learn as a shiny developers when 
# to use observe and observe n to create an observer object 
# versus when you use reactive invent reactive, create a 
# reactive expression and the key for deciding between the 
# two is to think about side effects. So what is a side effect? 
# Well, you know, when you execute a function in our any 
# function you can only really do it for one of two reasons. 
# You can execute function because you want to return a value 
# that you then use, or you can execute the function because 
# you want to do some other thing. Like maybe you want to make
# a plot appear in the window next to the console or maybe you
# wanted to save some data to a file on your computer. Those 
# things are side effects, they change the environment of your
# computer in some way, whereas a function, just returns a 
# value at the command line for you to use. I'm going to say 
# is not a side effect. It's just a calculation. The side 
# effects are important. If at the end of the day, your 
# computer program that have some side effect, then you really
# wouldn't notice that the program did anything except maybe 
# generate heat on your computer. You need a side effect to 
# make a value appear. You know, are actually uses the print 
# statement, which is a side effect to make values appear at 
# the command line for you to see you need a side effect, 
# make graphs appear in that sort of thing, but side effects 
# can be tricky. Especially when used in the context of a shiny app,
# I've prepared some quizzes that can help us hone our concept
# of what is the side effect. And It's not. For example, here's an art function.
# You could write in the command line, it does some subtraction and it does some 
# of the vision. And if we ran this function assume we pass it, A and B arguments 
# would this create a side effect, or would it merely return a value for us to use
# ? What do you think? This would not create a side effect. So if we would just 
# return a new number and what we do with that number is up to us, we'd have to 
# arrange in our code, to save it somewhere. Here's a different function. He's 
# going to change the digit. Sex option argument in our so. We only see six digits
# past the decimal place. And then it's going to look at the system time as a 
# character string. If I run this function, will it have any side effects? I'm 
# going to say yes, when you change the options of your our session that change 
# persists after the functions done running. Now, every time we look at a number,
# its digits are going to display in a certain way. So even though this function 
# would return a character string, it also has a side effect built into the 
# function. That changes how things operate after the functions done running. How
# about this function? You pass the data frame, it saves something to the data 
# frame, and then it returns back, the copy of the data frame. Well, this does 
# not have a side effect unless perhaps that dataframe was in our five or in our
# six class object. But in general the data frame that you pass this function 
# doesn't actually get changed, our builds a copy of it for the function to use 
# and that returns that modified copy at the end of the function because I've set
# it up to return DF so no side effects happen here. How about this go assign 
# values into the global environment? Yes, that's a side effect. What's going 
# to happen in this function effects? Things outside of the function, this 
# function doesn't actually even return a value for you to use, but then if 
# you go back into your global environment, you can see that there's a value 
# called values that now exists. If there was already a value called values 
# in the global environment, well, that values probably changed now because 
# this function went into your global environment and over row anything named 
# values there. It's definitely a side effect. One more function. We're going 
# to generate 10 random uniform values and then return. Those This code have 
# a side effect. Well, you know, it depends on how particular you want to be. 
# I would say no for our purposes. It doesn't have a side effect. We just get 
# those values back and then we decide what to do with them. But from a strictly 
# computer science standpoint, when you Generate random normal values in our 
# changes, your random seed and that change persist that's where the function is
# done running. So that is a side effect but we don't need to worry about that. 
# That's not go trip us up in the shiny up. Hopefully, depends on what sort of a 
# pee, right? But the point of all the side effect talk is side effects, do 
# something that's not obvious and the change happens outside of the function. 
# It's not a change that you managed by how you call the function, how you save
# its output. And since when you write a shiny app, you don't necessarily know 
# what things are. Go, get run. When it's very hard to reason about apps that 
# you side effects because you don't know. When that side effects going to 
# happen and the effect of the Sci-Fi is not contain because you're not 
# immediately saving it somewhere, using your assignment Arrow or Or what have 
# you?



#Obsvers vs Reactives, Part 2: The Key to Shiny

# Description
# This video explains the key to writing efficient, performant Shiny apps: 
# knowing when to use an observer, and when to use a reactive expression instead.


# Transcription
# So now, let's consider the difference between reactive expressions and Observers.
# Reactive Expressions, you saved the something we're saving ours to data, which 
# means you could call them later. We could call data, observers just get 
# registered with shiny, you can't call them later, they're not callable, that's 
# one important difference to along the same lines. Reactive Expressions, return 
# a value, where's observers don't? If the recipe that you give your Observer 
# returns a value that value, just evaporates. You don't get it back, you don't 
# get to use it unless the code that you trigger actually saves it somewhere. 
# Like, in the The list that we had before, where is reactive Expressions, that 
# code should return a value, that's what you're going to get. When you call data
# with parentheses whatever, value that code returned. Reactive expressions are 
# lazy, particularly lazy in a very good way. They don't even run their code, 
# unless something ask them to and even then they only run that code if they know
# that they're out of date. If they're up to date this give back cash code. So 
# their passive they're lazy. They don't do anything that they don't need to do.
# In contrast, observers are especially eager. Anytime the things that Observer 
# depend on changes, the server immediately runs all of its code, every single 
# time you only have to ask it to and nothing needs to call The Observers. 
# Nothing can call the Observer. It's job is to monitor that object as soon as 
# it changes its go run its recipe so that's very eager. That can be good in 
# some places with bad in other places depending on if that code needs to run and
# how long the code takes to run. And then the final difference between observers 
# in reactive Expressions is reactive Expressions actually cash their value so 
# they can save you time down the road where that doesn't really apply to 
# observers because they don't even have values to cash. Okay. What do all these 
# differences Mount up to They mean reactive expressions are especially well 
# suited to one type of operation and observers are especially well suited to a 
# different type of operation reactive expressions are excellent for calculations.
# You get a value back. That's what a calculation does reactive specials. Give 
# you value back. You can save it where you like you could call it when you like
# and there's some built-in Simplicity, they cash the value and they're lazy, 
# they're not going to calculate the value, unless something, actually uses that
# value. So if you need to calculate a value, you should always use a reactive 
# expression. What do you observers do? Well, they're well suited for side effects
# since they're eager. You know, that side effect is always going to happen. If
# there's a chance that what should happen with reactive specialist. Not the case
# since they cash things, even if you call the reactive expression they might not
# actually run their recipe. That might just give you back the cash values. 
# Observers will run the recipe and the side effect will occur. And then side 
# effects, don't have a return value. So all this stuff about observers, not 
# returning the value actually doesn't matter if you use the Observer to create
# side effects. In, this is the key to writing a good. Shiny app use reactive 
# expressions for calculations and use observers for side effects. And then if 
# you could help it, minimize the amount of side effects that happen in your 
# app, because it's still gonna be a little hazy about when and if they occur. 
# So, if you try to do the opposite, which people do then, your app will have 
# some trouble. First of all, if you try to do a side effect in reactive expression
# is not going to be clear whether or not the side effect actually occurred. So 
# if you're getting a bug, will be very hard to debug. You'll have to think. 
# We'll did the active expression. Excuse code because it is a lazy sort of thing
# it. So I go ask you something calls it and Saif is not going to occur unless 
# the code executes and then did it also execute the code just because something 
# called it because it is through this cash thing where sometimes it doesn't excuse
# code very hard to reason about that sort of thing. That's why you shouldn't 
# rely on side effects in and I didn't reactive expression will make your code 
# buggy and also hard to reason about On the alternative side, if you try to do a
# calculation in an observer, how are you going to retrieve the results of that 
# calculation, you can do things like we did where we maintain state with reactive
# values in that last stop in. Sometimes we need to maintain state. That is the 
# way to go about it, but it is more complicated than Simply Having reactive 
# expression, return the value. So if you're need to do a calculation and you can
# do it with reactive expression, do it with reactive expression, your app will 
# be simpler and more easy to look to reason about out and also less buggy. But 
# then, there's another downside to using calculations in an observer Observers 
# go, run the calculation, whenever can because observers are very eager. And 
# sometimes, those calculations will not need to be run. And since you are not 
# actually in the driver's seat of your app, some user is, you can't minimize 
# this. You don't know when those calculations will be run because the users go
# be triggering them and they go run each time in the whole purpose. Of the shiny
# app is to create some sort of reactive experience. You want things to happen 
# instantaneously and what gets in the way of that having the necessary 
# calculations run into Things down in the background, your app will start to 
# drag and it's not going to look as impressive as it should, or it could so 
# if you can avoid putting calculations and observers do so. So this is why I'm 
# going to leave you with this video. No exercise, memorize. This if you're 
# making a calculation, use a reactive expression. If you're to have side effects
# that need to occur use an observer,