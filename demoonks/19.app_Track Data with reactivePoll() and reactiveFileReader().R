# Description
# 
# Now that you understand invalidateLater(), it is time to learn how to track 
#  changes to the data files and databases that your app depends on.

#  Transcription
# Let's take a look at your clock app. Here's the app in our studio and if I run
# the app, we can see how it operates. It's a clock and it updates. Every second,
# it's pinging our computer to find out the system time every second and then each
# time it pings at the times changed by a second. So it displays that new result,
# I'm doing it with invalidatelater and I'm asking invalidatelater to check every
# 1000 milliseconds. That's one second. If you recall, we use this technology in 
# our last app to make this graph update. Every time I update my data set, this 
# idea of having a shiny app track and external data, set is incredibly useful. 
# It's something you might use over and over again, but the way we set up in the 
# last video is not ideal. Why might this be a bad idea? Can you think of a reason?
# Well no matter what happens every five seconds your app is going to read in your
# data, dot CSV file. If that's a very large file that would be an It's of operation
# and you might not want to happen every five seconds. For example, there might 
# be some times where the data has an updated. Since last time you checked to 
# reread in the whole data set would be a little heavy-handed. So shiny comes 
# with some other functions that do the same sort of thing, but they do it in a 
# much more efficient way. Those functions are reactivefilereader and reactivepoll.
# So let's take a look at how they work. Reactivefilereader is designed to track 
# changes to data that lives in a flat file. A file like data, dot CSV. That's a 
# file on your computer reactivepoll. Works with the database and we'll look at 
# that in a second. The way reactivefilereader works is you use it to create a 
# reactive expression. You don't need to put it inside of reactive expression. It
# actually returns a reactive expression and that reactive special will be the 
# contents of your data file. It takes at least four arguments and the first one
# is the number of milliseconds to wait between checking the data set for changes.
# So the larger the number, the more efficient, your app will be in a way the less
# computational do the smaller. The number the more instantly old react to changes
# in the data set. The second argument needs to be set to this session, and session
# should be the third argument of your shiny shiny server function. So until now, 
# we've always include the arguments input and output in the shiny server function.
# Those arguments are mandatory the session argument the third argument of the 
# function. It's not mandatory it's optional. But if you're going to use 
# reactivefilereader you need to include that session argument. It provides to 
# the function details about the actual shiny session that's running at the I 
# meant the function gets called the fourth argument of reactivefilereader is 
# the name of the file to read so this would be our data dot CSV. This should 
# be a file path that leads to that file. If the files in the same directory as
# your shiny app, then it's just the name of the file. And then, the last argument
# will be a function name and this is the function that read file reader should 
# use to read in that file. So here data dot CSV is a CSV file. So the read 
# function will be read a CSV but it could be read text or read a table or it 
# could be a function that you write yourself, you could use reactivefilereader
# to monitor any type of file on your computer, you just need to set the read 
# Funk argument to a function that can read in that type of file. Once you do 
# that, what will reactivefilereader do? Well, it reads in your file and save 
# the data as a reactive expression. It then checks in on that file every interval
# depending on what you set the interval to be, it doesn't read in the file each
# time. It checks in instead, it looks at the the timestamp for the file on your
# computer, your computer knows when the file change last. And if that timestamp
# hasn't been updated, if the file hasn't changed, then reactivefilereader 
# justjust stops, right there, everything's up to date and it lets it be, but 
# if it notices that the file has changed, then it will read in the file. So it's
# sort of like our invalidatelater approach. It only reads in the file when it 
# needs to read in the file. And that's efficient. What if your data is lives in
# a database? Well then you can use reactivepoll. So a database you can connect 
# to data bases from are you could connect a databases from a shiny app, that's 
# no problem. We just ran our function that builds that connection to use 
# reactivepoll. You do the same thing as with reactivefilereader. You set the 
# number of intervals to check that database. You use the session argument 
# mandatory for reactivepoll. And then you give reactivepoll a check function.
# This is a function, it might be a function that you write yourself in 
# reactivepoll is going to run that function every interval. So he would run it
# every five seconds that function should connect to your database and it should
# look to see if things have changed in the database. Now, this function is go be
# run over and over again. So you want to designed to be very light weight, this 
# is your chance to be clever. What is the easiest way to check if there have 
# been important changes to your database? If the function returns true, it says,
# there have been changes, then reactivepoll will will use the fourth argument 
# which is also function. The value function should be a function that actually 
# accesses the database and pulls down the data that you want, if things have 
# changed. So the first function checks, if there's a change to small Nimble, 
# lightweight function, the second functions more heavy-duty might take more 
# time, but it actually retrieves the data. And just like reactivefilereader, 
# reactivepoll. Will take the information that it reads in and save it as a 
# reactive expression for you to use in your shiny app. So let's add these 
# things to our crib sheet. We now have invalidatelater which you can use to 
# schedule reactions and reactivefilereader in reactivepoll which you can use to
# track external data sources. You now have the tools that we can use to fix our 
# app and make it more efficient. I'd like you to go to the app that I showed you.
# It's in the demos folder saved his O3 track data 3. This is the app that uses 
# invalidatelater to track changes to the data dot CSV file rewrite, the app to 
# be more efficient to use reactivefilereader. Then open the app and run it. The
# data file that's tracking is in that same folder right there. So you can make 
# changes to the data file and save them. Don't forget to save them and see if 
# the app responds in the way you play it.


library(shiny)

ui <- fluidPage(
  
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)



