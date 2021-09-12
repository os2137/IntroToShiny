# Description

# Plots provide a special opportunity for reactions: you can use a plot as an 
# input to record user mouse actions, even as you use the plot as an output to 
# display information. Watch this video to learn how.

# Transcription

# Let's now, look at a very special feature of shiny apps and I'll start with a 
# quote by John tukey. He's the father of modern data analysis. What? We're 
# starting called data science, he said, picture is not merely worth a thousand
# words like people say. But is much more likely to be scrutinized than words? 
#   Are to be read? I think that's true. And I think that shows us why graphs are
# so valuable when we communicate data science results, but what if you could take
# your graph and zoom in on it, or pan on it or brush it? Or highlight points, 
# remove points, add points. The sort of things that would make your graph 
# interactive. They won't be people be even more likely to interact with the graph
# and the Discover things in the graph. I think they definitely would, and since 
# shiny apps are designed to create interactivity is probably not a surprise that
# you can use them to create interactive Graphics. This is what I mean, up. Until 
# now we've been using plots as output objects in your shiny app, but you can also
# use them as input objects to collect information. Your users Mouse clicks on top
# of the plot and send that information to our. So the server side of your shiny 
# app can do something with it. We're going to do this with an app that I've built
# in the demo section. I'd like you to open it up first. This will be our warm up
# and then I'll show you what we're going to do with this app. The app is in demos
# 042 plots Tatar. I want you to find the app and run it and I'll go over to our 
# see you right now and show you how to do it. So do this along with me. If you 
# go to the demos folder of the class materials, here's the app 042 plots Tatar. 
# If we run the app, will see that it creates two plots. Since I have the font 
# zoomed up on my our CID, it's kind of hard seeing both at the same time. But 
# these are two plots created with the ggplot2 package. It's okay. If you don't 
# know how to use ggplot2, it's not going to be necessary for this exercise. I've 
# already written all the code over here. The plots showed two views of a data set
# that comes with ggplot2. It's a data set of diamond prices prices at the 
# diamond,sold for on the open market and along with the price of each time. 
# In the data set contains information about the diamond such as what color was
# a diamond. What was the cut of the diamond? How Carrots was the diamond, the 
# top lat groups diamonds into groups by their cut and their color using a coding
# system, using Diamond markets, the size of the bubble that appears at each 
# intersection shows what percentage or how many diamonds in the data set fall
# at that level of color and interacted with that level of cut. So for example,
# there are very few diamonds that had a fair cut and ugly color, but there are 
# quite a few diamonds that had an ideal cut and the color g, whatever. That might
# be. The second plot is just a scatter plot of all the diamonds data. It shows 
# the carat size of the diamonds, versus the price of the diamonds. What we're 
# going to do with these plots, it's we're going to turn them into this app. 
# Which I'll expand into a new window so we can see the plots of the same time.
# This app is designed so we can use linked brushing between these two plots. 
# We could brush an area of the first plot and all the points that fall in that 
# area will turn green on the bottom plot. So here we can see all of the d-rated 
# diamonds or all of the ideal rated diamonds and see where they fall into the 
# scatter plot of carat size and price. All right, so that's what we're going 
# to try to do. Let's do it to do this. We're going to use a new feature of the
# plot output function after you give your plot a name. The way we've been doing 
# with pot output, you can add input arguments, that plot output should collect.
# For example, you could add click double-click, that's DBL, click hover, or brush
# argument Supply output. There's the only for you can use if you want to use one
# of them, set it equal to some name. This Argument will store value to that name.
# So, if I set this equal to Clique equal, my clique I would then have some value
# stored in the input list under my clique, which I could at use as an our 
# programmer coming over to our studio. We could do that pretty easy. I'll stake
# my plot here. I'm going to change it so it's using plot. One has a click equals,
# click argument, I've added some verbatim text so I could see something come 
# back. And what I'm going to put in that verbatim text is the output of the 
# input, click argument. Here let's make the app and see what I'm talking about.
# You notice I removed the second plot in this app. Here's the first plot. I 
# could click somewhere on the plot and down below. I see where I've clicked. 
# Notice the X and Y, coordinates are in the dimensions of the plot. So you know,
# even though we have Fair good, very good premium. If I click near Fair, that's
# near one Goods near 2 and so on, if this was actually numerical data to the 
# line, exactly. Actly with the numbers. And whenever I click somewhere else, 
# the data changes, also notice that input click is returning a list with two 
# values, first values, the x coordinate, and the second value is the y 
# coordinate. That's how interactive Graphics work. But here's everything you 
# could do with plot output. You can find out where the user clicked, you can 
# find out where they double click, you can find out where their Mouse is 
# hovering and you can find out where they've brushed a region of points. 
# Those are the four inputs you could collect from your plots and I have a 
# demo that shows each of them in action. So if you go to the class, files up to
# demos, the demos folder and then go to Vis. All that's the fifth demo. 
# This app, shows everything. Here's a simple scatterplot and down beneath the 
# app, you pop it out, Soul easier. See? You could click on the app and you could
# see the click coordinates appear since. I'm also hovering at that place, the 
# hover input appears at where I'm hovering, I could double click on the app in
# the double-click coordinates appear and then I go brush your Ian and we see 
# what we get from brush. The app does a good job of showing you what comes back
# from each of those inputs. None of them just provide a single value through 
# them, provide two values, and x-value and y-value, and then the brushed region
# provides for values. The minimum x value, the maximum x value, and the minimum
# y value, and the maximum y value. So that's what we have to work with, but 
# shiny doesn't really intend for you to use these raw values of where the 
# abusers, clicking in your app, you can, you can use those if you think of a
# interesting way to use them. But shiny comes with some functions that will 
# help you turn those locations into Data. Those functions are near points, 
# and then brush points. Here's how near points. Works near points will find 
# all the data values in your data set that a clear near that click. Or that 
# double click or that hover, or whatever. The way you call near points, is you
# give it the name of the dataset that appears in the graph here. That's the 
# diamonds data set. Then you give it the name of the input that's collecting
# The Click or the hover, or the thing that you want to match points to here. 
# I'm gonna match from the input dollar sign, click next. You give it the name 
# of the X variable in the graph and the Y variable in the graph. Now, if you're
# using ggplot2 to make your graphs, you don't even need to provide this This 
# ggplot2 works very well with this feature of shiny. All you need to provide is
# the name of the dataset and the name of the input, but you can use interactive
# graphics with base Graphics that don't come from ggplot2. In that case, you do 
# provide X variable and Y variable. Now, unfortunately, at this moment, you 
# cannot use interactive graphics features like this with lattice Graphics or 
# some more exotic Graphics packages because we just haven't had a chance to 
# write those backends and if you're interested in writing, that sort of back in,
# please send us a pull request on GitHub. For now, these features will apply to
# base graphics and ggplot2 Graphics. The last argument of near points, which is
# an optional argument, is the number of points to return. You could arrange. 
# So you only get the nearest point if you set max points to one where the nearest
# Five Points to The Click reset to 5. If you leave Max points off, you'll get
# everything that's within a certain threshold distance of that, click no matter
# how many points that might be the next helper function for interactive Graphics
# is brushed points. It's very similar. ER, two near points but it's meant to use
# with the brush feature. It shows you all the data points that lie within the 
# brush to region. The syntax is also the same. You give it the name of the data
# set that appears in the plot, the name of the input that contains that brushed
# region. And then if you're using base Graphics, you provide the x variable and
# the Y variable and notice if your X variable comes from a reactive value, just
# passed that reactive value there. Same with the Y variable. If it comes from 
# somewhere else, you just passed the character string that contains the name of
# the variable. Use these real quick and see what they could do for us. If I go 
# back to our studio, I'll close this demo and down here. This would be the demo.
# That's showed us where we're clicking instead of showing where we're clicking.
# Let's return all the nearest points from where we're clicking. So all leave, 
# verbatim text and render print the same, but what I'm going to print I'm gonna 
# make different. I'm go print, the output of your points The graph, the data in
# the graph is the diamonds datasets that's the first argument. The Click is 
# being saved as input dollar, sign, click. And since this is a ggplot2 graph, 
# I don't need to put anything else here. I could save this. Reload the app and
# now it says you know, there's no point in you, the clicks, I haven't clicked 
# Anywhere But as soon as I click somewhere near some points it shows me all 
# the points are near the click in that case. It'd be all of the points in this 
# group that I'm clicking here. These are lines of data that come from the 
# diamonds data set. Now normally you probably won one. Well, you might want 
# to see those points, but you might want to just immediately feed them into 
# something else like a model that uses them. Now let's take a look at how 
# brushed points would work. I'm going to change near points to brushed points.
# Brush points takes the same arguments as near points, but instead of having a
# click input, I should change this to a brushed input. So, I'll change this to
# brush. I could save the brushes and put click but that's a little confusing. 
# I'll save isn't put brush. Make that change down here. Save that and reload 
# the app. And now when I brush your region, it shows me all the points in the 
# Brush Street. So I could use those points just to display what's being brushed,
# but why don't I take those points and feed them back into the graph or into 
# my app, you might take those points and feed them into a model, for example. 
# Well, what I'm going to do is I'm going to remove the verbatim text output. 
# We don't need to look at that anymore and I'm gonna use these brush points 
# in a different way. I would like to make the points that are being brushed 
# here turn green in my graph with ggplot2 you can do that by just adding an 
# extra layer to the graph. So here I made all the black It's by adding geom 
# count. So I'll add GM count again to make a new layer of points. But in this
# layer, I'm going to set the data that the layer uses specifically to brush 
# points. In ggplot2 terms what this means is, This layer of the graph will 
# only plot the data that appears in Brush points. And since I want the day 
# to be a different color, I'm going to set the color equal to Green. Otherwise,
# they'd be black and I wouldn't really see anything. So now I reload the app,
# here it is. And when I brush a region, those points turned green, All right,
# so we're halfway to the app that I want you guys to make the link brushing 
# but now we're just linking this graph with itself. Let's go back to the slides
# and look at how we could link the graph to the scatter plot that appears below
# it. What I'd like you to do is go 2042 plots, the two plots as they are and 
# then try to modify it using these new arguments, applaud output and using this
# idea of adding a layer to one of your plots. You can use this code right down 
# here. + G on point colored green. I want you to add To the scatter plot. I 
# want it to show the data that's been brushed on the first plot plot. One make
# that date appear green in the second plot plot to see if you could give that a
# try. If you get stuck, there is a model answer in the exercises. You could look
# at



library(shiny)

ui <- fluidPage(
  
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)