# Description
# What if your app needs to react to things other than user inputs, e.g. things
# that happen outside of the app? This video will show you one solution: how to 
# schedule automatic reactions with invalidateLater().

# Transcription: 
# Now, let's think about something different. How can you write shiny apps? 
# That track changes that occur outside of the app? Is that even possible? 
# Well let's start with a quiz, here's the simple shiny app all does, is it makes
# this graph right here. There's no input objects but the graph is graphing a 
# data set. What would happen if I updated the data set with the shiny app update
# the graph, what do you think? Well, we could try this out and practice, go over
# to our studio. Here's the same map, I have it right here and it's reading this 
# data set data dot CSV, both the data set and this demo app are in The demos 
# folder of the class materials. This is just oh one track data one. And here's 
# the day set down here. So you can follow along at home if you're interested. If
# I run the app, I see my graph. And here's the data set right here, I have it 
# open so I can add new data to the data set. I'm going to add 11th observation 
# and I'll set this equal to 1.0, haven't saved it yet. I'm about to hit save 
# when I do. Do you think this Apple update? Well, here we go. I'm hitting save 
# right now and nothing happens. And how could something happened? How did, 
# how would shiny know that something on my computer? Changed the data file data.
# Dot CSV isn't really even inside of our, let alone the shiny app. These are 
# changes that are external to what's going on. So shiny doesn't recognize them.
# There's no dependencies here, there's no notifications. There's no invalidations
# and the apps remain static but we could probably work around this. Right. Let's
# see what's going on first just to make sure we're on the same page. We could 
# visualize this app like this. We have one reactive expression data, it reads 
# in this data set and then we have one output object. It's this line plot. The 
# output object takes a dependency on the reactive expression and that's it. 
# There's nothing notifying reactive expression, it's not taken a dependency. The
# data set data CSV, that's not a reactive value. So this app is just saw her 
# locked in this sort of stasis. Now, let's modify the app a little Use the same
# app by I'm adding an action button at the top of the app. I'm also changing,
# the reactive expression to event. Reactive still go be reactive expression but 
# now it's going to track the action button when the action Puttin changes, 
# three active expression will update itself. This app right here is also a demo.
# We could build it right off of oh, one track data or you can go to the demos 
# folder and open it as oh, to track data to. So now I'll run this app, here we 
# are. When I click update, the first time I get my plot, you notice it has XI XI
# value because I already had it in here, but let me add a new value 12, and I'll
# make that equal to zero. Go save this right now, nothing's happened yet. But 
# when I click update, I get that 12 value. Let me add another value. This equal 
# to negative 1. Save that click update. Now, we get that we can use this approach
# to keep updating the data, but it does have a downside. I need to be here to 
# click update. Every time I want the graph to update. Let's take a look at how 
# this is unfolding here. We actually have an input object. Reactive value named
# input. Go our graph takes a dependency on are reactive expression. The reactive
# expression takes a dependency on input, go. When I click input go it causes the
# reactor expression: valid which causes the graph to become invalid. The graph 
# reruns us code reactive expression sees it's out of date so it runs its code 
# and at that point it reads in data dot CSV again and then everything's ready 
# to go again. But like I said this is not an automatic reaction. I'm you have 
# to be there and you have to click the update button. Let's look at a way you 
# can make this sort of response. Automatic. There's a function of comes in shiny
# called invalidatelater. Eat later in the job of invalidatelater is to schedule
# automated reactions. Invalidatelater literally invalidates an object, a little
# later on the user doesn't have to trigger this invalidation. You programmatically
# arrange for it to happen in the future. When the object becomes invalid, it will
# respond, however, that type of object responds when they're invalid. So, for 
# example, if I wanted to make my reactive expression data become invalid, after 
# one second, I could put in, Date leader, inside the reactive expression. I'll 
# put 1,000 is the arguments of invalidatelater that tells invalidatelater after 
# 1000 milliseconds of past invalidate this expression. The way you use, it is to
# place it inside the code chunk of the object that you want to invalidate.  
# That's important to remember. Once we do that, we'll make an app that looks 
# like this could go over and test it. Out our this app is saved as the third 
# demo track 3 data. I'm using my invalidatelater. I'm send it to five thousand
# milliseconds, that'd be five seconds. And so every five seconds this is going
# to read in the CSV. So here's my graph. And if I make a change, 14 at equal 
# to regular one. Save it. I see the change happening. It might take a few 
# seconds before the change actually gets registered but it'll never take more
# than five seconds because every five seconds this app is going to read in the
# new data. So that's interesting. All I had to do to make this work is change,
# things externally. I don't have to go into shiny. So, from the shiny side of
# things, this is automated whenever I change the Externally shiny, automatically
# picks up on it with a little bit of leeway around. 5 Seconds worth, go stop 
# that because I don't want to run in the background. If you think about how this
# is happening, you can imagine us having a timer in are reactive expression. 
# Now, this case, there's no need to have an action button. I just make a reactive
# expression so technically there would be no input values. My plot takes a 
# dependency on the data, reactive expression and the data reactive expression 
# invalidates itself after five. Hands at that point the plot becomes invalidated
# and it goes to collect the new data value and when it does it builds a new plot
# and everything starts over again invalidatelater then starts a new countdown 
# and after five more seconds it will invalidate. So that's how invalidatelater 
# works. It sets up a schedule of validations, the validation doesn't happen, 
# just one time. It reaching Lee happens, every time data is called it triggers 
# the countdown again, which causes that invalidation. Then the next time, it 
# will happen again after 5 seconds and so on. And so on, I would like you to try
# to use invalidate layer to make an app that looks like this. So this app is 
# really just a clock, it's showing us the current system time, but I want that 
# clock to change. Every second. I want your app to stay up to date with the 
# current system time. So you will have to use render print and verbatim text 
# output to display this time. You could get the time by calling the our function
# sis taught time. So call Sis dot time. Take that output. Put render it into a 
# print statement, place it into your UI with verbatim text output, but then 
# you'll have to arrange for that rendered print statement to invalidate itself 
# at least every second, right? So it changes your app changes when the time 
# changes, give that a try, run the app. See if it works as a functioning clock 
# and then the next video we'll discuss some ways to perfect this process.


library(shiny)

ui <- fluidPage(
  
  plotOutput(outputId = "line")
)

server <- function(input, output){
  data <- reactive({
    invalidateLater(5000) # this will be every 5 seconds
    read.csv("data.csv")
  })

output$line <- renderPlot({
  plot(data(), type = "l")
})
  
}


shinyApp(ui, server)
