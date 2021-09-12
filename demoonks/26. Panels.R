# Description

# These R functions help you package Shiny elements into visual groups, or panels
# that you can then pass into the app’s layout.

# Transcription

# Let's take a look at how your app should look right now. If we go over to our 
# studio in the exercises folder, you could find the model answer. As 17 layout 
# dot R. If you look at the code, making the app, look the way we have it before.
# Doesn't involve changing in the elements. We just need to lay them out with 
# fluid rho and fluid column. As a reminder, this is how we want the app to look
# when we're finished. You might need to make the app wide enough to give it space
# to fit here, but we have the slider on one side and then we have the summary in
# the histogram, on the other side. If you collapse the app shiny will try to do
# intelligent things to make everything fit in the same space. That's where the 
# fluid part of fluid page and fluid rho comes from shining. Might at the end of
# the day overrule your attempts to lay out the app but only in a way that keeps 
# the app visible and an intuitive way whenever it can obey your commands, it's
# going to do that then actually this is probably what you want. If you look at 
# the code that we have here, you'll see it's just a matter of choosing columns 
# and arranging things. The correct way you could do this. And You will do this.
# You'll do this quite often but it's laying out your app with columns and fluid
# Rose is a little bit of Brute Force manipulation. One thing that you'll find is
# it's very easy to lose track of closing parenthesis. What number of parentheses
# you need whether or not, you put commas in between things and so on everything
# over here in the UI is an argument of something else. So you really do need, use
# those commas to organize, you know, what's arguments of what, and as your app
# gets more sophisticated, it is easier to make the sword. Little errors that 
# occur. One thing that you could use to make your life easier is inside of our
# studio. If you have an extra parentheses or something like that, these little 
# code warnings will appear in the side here. So, here I've added an unnecessary 
# parentheses, which means later down in the app rstudio. Can't figure out why I 
# have a comma here and why I have something at the very end, the very last 
# parentheses now unexpected because it's one extra parentheses these little 
# cues. Don't tell me exactly where I went wrong. But they can help me see that.
# Something's not right before actually run the app. If I remove this parentheses
# and save it, those cues go away. Other than that, you just have to start being 
# being very careful as you're asking more complicated. I personally don't like 
# that myself, but there's not much you can do. You do have to be accurate when 
# you create computer programs and this is starting to be called a complicated 
# computer program. Let's take a look at the panel functions now that come 
# inside of shiny, these functions are designed to group things together and 
# normally, they're designed to group multiple elements together so you could 
# pass them into one of the layout functions. So if you want to use one of the 
# other layout functions besides fluid row and column, you'll want to start by 
# knowing how to use panels. So, how do you use panels? We'll all of those 
# functions, create different sort of panel, most of them are reserved, just for
# one particular layout function or another, but the most general purpose panel.
# And is probably well panel when you put elements inside of well panel, shiny 
# Will Group them together into what looks like a box that has a gray background.
# This is a visual grouping and then you can pass well panel itself with all of 
# its contents into different layout functions. So, here knows I'm calling well 
# panel inside, one of these columns and it makes the words five and six appear 
# inside this little gray box to the most common panel functions that you'll 
# probably use. Use our sidebar panel and main panel, but you'll only use these 
# with sidebar layout. So, how does this work? You'd pass? Sidebar layout to fluid
# page and that would divide your app into what's known? As a sidebar layout, on 
# one hand of the app, one side of the app, you have a sidebar, it's in a great 
# panel as a fizzle. Well, panel and that's normally where you'd put maybe the 
# controls to your app and then on the other side of the app, you have a larger 
# panel called the main panel and that's where you probably put something like 
# the graphs that appear in your app or the Cyborg pounds on the most common 
# shiny layouts. And if there's something like a canonical looking shiny app, 
# it's probably an app that uses a sidebar layout. Now, as you get more 
# sophisticated, you'll probably not migrate away from sidebar layout, It's very
# effective, but sort of utilitarian, and maybe it's not as pleasant as you'd 
# like your app to look. In sight of sidebar layout, you should call two 
# arguments. The first argument should be the output of sidebar panel, sidebar
# panel groups, things together and passes them. The sidebar layout in the way 
# that sidebar layout expects, the second argument should be the output, a main 
# panel main panel groups, things together and passes them in the sidebar layout,
# in a way that cyber Leo can use to build the main panel. So, the sidebar panel 
# main panel, work together, a sidebar layout, to add things to, the sidebar, 
# just put them as arguments of cyber panel that To the main panel, put them as
# arguments of main panel. The Sounds intuitive. Well, it kind of is after you 
# practice it. Once you use sidebar layout, your app will look like this. We take
# our basic app on the left and here's our app in a sidebar layout. - some things
# like buttons in the submarine stuff, the gray box over there. Is the sidebar 
# it's only as tall as it needs to be to fit the things you put in the sidebar 
# and then the main panel has the graph. That's right there. If your app is wide
# enough, it will appear like this and you'll see that sidebar. But if your app 
# gets squeezed tight, Chinese not going to make those things so small as to make
# them illegible, it's just go rotate. The Side Bar on top of that, the main 
# panel. So if you try to make a sidebar app and it's looking like this and Don't
# see the side from sidebar in your little confused, try popping the app out into
# new window and enlarging it and see if the sidebar does end up moving to the 
# side. I'd like you to give this a try, replace the fluid rows and columns in 
# your last app. You could use the model answer from the exercises. If you want 
# start their, replace them with sidebar, layout, sidebar, panel and main panel 
# as a result graph should look like it has a sidebar layout. When you've done 
# this, don't through the app out save, it will use it again.