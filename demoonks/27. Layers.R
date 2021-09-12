# Desription
# These functions "stack" panels on top of each other as if they were layers, 
# which saves space and gives your app the appearance of being a multi-page 
# website.

# Transcription
# Here's how your sidebar layout app. Should look the model answer is saved as 
# eighteen dash panels, dot R, when you run the app, the sidebars go be on top 
# of the app, if you look at in the viewer pane, but if you pop it out into its
# own window, the sidebar will be next to the app. This is actually fairly similar
# to the app that we made with our fluid rows and columns, but it took a lot less
# code to make this app. If you look at the code, You can see that we're calling 
# a sidebar layout inside a fluid page and then we pass to its sidebar panel, 
# inside the sidebar panel, we put a slider and then we pass to it, main panel, 
# where we put both of our plot output and our summary outputs. The other layout
# functions here. Work similar to sidebar layout, except they arrange their 
# objects in a different way. Flowlayout ranges this objects, next to each other
# until it hits into the page, and then it moves from down. And as your page 
# widens and shrinks will move objects up and down, it's a different rows. Split
# layout similar, sidebar layout puts things in half, you can tell what vertical
# layout does and so on. So the layout functions are fairly easy to use and so 
# are the panel functions. It's just a matter of keeping track of what goes where
# and what's inside, what? Now, let's look at the layering functions. Instead of
# positioning things beside each other. Layering functions positions. Things on 
# top of each other, as if your app, had a z Dimension going out towards the user,
# the user will only see what's on the topmost layer because everything else will
# be I blocked behind it. This layering idea is based around a type of panel 
# known as tab panel, you create a tab panel with the function tab panel and 
# camel case. When you put things together inside a tab panel, you need to First
# give that tab panel a title. This title will be important because it will help
# your user navigate between the different tab panels that you combine into 
# layers, each tab panel will be one layer in your stack of layers. So here, 
# this would make a tab panel name tab 1, then I can put whatever I like into 
# the top panel as arguments, a tab panel, you can think of each tab panel as a
# small little UI for you to arrange, however, you like inside the top panel 
# function, once you've created a set of tabbed panels, you can combine them 
# into a layer stack, with one of these three functions, tab, set panel, nav, 
# list, panel, or navbar page. They used to something a little differently tab,
# set panel ranges the tabs on top of each other and leaves, literally tabs above
# that, you could click on to bring one of the tab panels to the top of the stack.
# Now, this panel ranges them in the same space, but creates a sidebar, like nav 
# list that you could click on the name of the panel, you want to rise to the top
# of the stack, in the navbar page Stacks, things on top of each other and creates
# a nav bar at the top of the page where again you click on the title of the 
# panel, you want to rise to the top of the page, this gives the appearance that 
# your app is actually a multi-page web page. It's not, it's just a shiny app 
# that has a navbar page stack of layers. All right there, let's look at how. 
# These things play out in real life, we could take our sidebar layout that we've
# just made. This is exercise eighteen dash panels dot R, and we could insert 
# some tab panels in here. For example, I would like to make the plot appear on 
# its own panel and the summary information parent its own panel. So I'll make 
# each of these a panel with tab panel. I'll do that by surrounding the plot with
# tab panel and then giving tab panel a name, This type, he'll name thought. And
# then I'll surround verbatim text input or output and its own tab panel. I'll 
# give it the name summary. I'll make it uppercase Now, I have to combine these 
# tab panels together into a stack. Using one of those three functions that I 
# mentioned, let's start with the tab set panel function, When I run the app now.
# Pop it out, I'll see that my main panel now contains a set of tabs. There's two
# tabs, the summary Tab, and the plot Tab, and I can choose which Tabo want to 
# look at by clicking on the main panel here. if we go back to our app and change
# tab set panel to nav list panel, That out we see the same thing we only ever 
# see the histogram or the summary at one time, but now how we navigate between 
# the two is a little different. This whole area is our main panel and the 
# novelist navigation section appears in that main panel next to our sidebar. 
# To create a navbar page. We need to work a little harder navbar page, the 
# function replaces fluid page. So here we would put navbar page, and then you 
# need a title for your navbar page. Let's just call this My app. Inside a 
# navbar page, you then want to put your different tab panels, we wouldn't 
# want to use a sidebar layout inside navbar page. We want to immediately begin 
# with a tab panel. So why don't I create a tab panel for the slider and I'll 
# call it slider. I'll put the slider as an element of that tab panel. Then I'll
# remove the main panel and the nav list panel. And I'll have my remaining two 
# tab panels be the following elements. This nap for our page, okay? Now I just
# need to make sure I've used the right number of parentheses. just seems like 
# I have now when I rode run this app, Pop it out. I have the slider on its own
# tab. The plot on its own tab in the summary on its own tab. So, this is what 
# navbar page looks like. Let's have you put this in the practice. If you go to 
# the class material in the demos folder, oh nine layers. Contains an app for you
# to modify this app. Use fluid rows and columns to create an app that looks like
# this. It's a bunch of buttons here. If you click them, you can see what happens.
# There's three buttons. And each one samples, a certain type of data. The first 
# button samples, normal data, and it draws a histogram of random normal data. 
# The second one sample is uniform data, and the last one samples chi-squared 
# data, but they all appear here on the same page. I'd like them to each being 
# their own Tab. And I like to put the tabs together with the navbar page. In 
# other words, I would like this to look like, The model answer for the next 
# exercise, navbar page, without looking at the code. If we look at this app, 
# we now see that we have normal data on its own Tab, and we want to look at 
# uniform data, we have that on its own Tab, and when we want to look at 
# chi-square data, we have that on its own tab. That's the app that I want you 
# to make using tab panels and using navbar page, you can begin with o9 layers, 
# dot R. And if you get stuck, you can look at 19 - navbar. Page dot are. So 
# when you're ready, give this a try. And after you finish meet me in the next 
# video,
