# Description

# Since your Shiny apps are HTML documents, you can style and enhance them in 
# the same way that you would style or enhance a web page. Here you will learn the
# rudiments of adding CSS, JavaScript, and more to your apps.

# Transcription


# Let's take a look at your formatted app. Inside the exercises photo, the class
# materials. The app is saved in the directory name, 20 - tags. It's a directory
# because I have both the applet, our file and also the www folder where we need 
# to put the shiny PNG file. If we look at app dot are, you can see that. Most of
# us are familiar app but there is a section in the sidebar panel, where I've 
# added an image tag or I'm sourcing to the shiny image in the www folder. I 
# have Line break. So the Texa Falls will be on a new line, not beside the image.
# I'm using em2, make some italicize text and I'm using a to make a web link to 
# the shiny website. When you run the app, it looks like this in new window. This
# goes on the side here. Now what if you want to add a lot of raw HTML to your
# app you could use HTML function but it might make more sense to save that HTML
# in a different file and then add that file to your app. You could do that with
# the include a T malfunction. In fact, you could add all sorts of type of code
# to your apps UI using these include functions. If you have a file of CSS 
# styling, you can include that in your app with include CSS. If you have a 
# JavaScript you conclude that in your app with include script, if you have 
# marked down that you want to put into your app to to use in your UI, you can
# do that with include markdown and you can also include text. Now, these 
# functions are there for you, to you to use, but I think we're getting to the
# point of diminishing returns if You have a file of HTML, you want to use 
# for the, for the UI of your app. I recommend that you use the HTML templates
# function. If you have a whole file CSS, you want putting your app, there's a
# good chance. You're Savvy enough web developer to use the HTML template 
# function as well. Things will go a lot faster for you if you do it that 
# approach, but if you want to build your UI from our and then you want to 
# include these things, the include functions are what you would use. Just 
# put each of them in the UI component of your app and pass them the file path,
# that leads to the file, you want to include in the UI of your app. What shining
# will do is it will import the contents of that file into the HTML document that
# passes to your users computer. Now, some of you might be asking what is CSS? 
# CSS stands for cascading style sheets. And CSS, is how we make web pages. Look,
# the way they look. Web pages are very similar to what we're doing is shiny 
# where you could add text, you got tables and stuff, and by default that's all 
# going to look fairly. Plain, for example, here's a web page that will take us 
# to in the next video, It's called shiny.rstudio.com. And on the right is how it
# looks in real life if you want to visit it. On the left is how it would look if
# we just looked at the things that are in the web page, the text, the links that
# sort of thing. We make this very bare-bones file on the left, look like the web
# page on the right by adding CSS, styling to the elements in the Bare Bones page.
# In fact, you've probably got to a webpage when you had a really slow connection
# and it loaded in the sort of bare-bones way. And you didn't really understand 
# why it looked different than it normally does, that's because the CSS hadn't 
# loaded yet for the web page. Well, your shiny app is a web page and you could 
# use CSS to style the elements of the shiny app. The same way, you'd use CSS to 
# style the elements of a web page. Here's a brief overview of CSS, there's three
# different ways you can call it within a web page. You could link to an external
# CSS file in the header with the link. You could write some CSS in your header, 
# that will apply to the whole web page. And then in the individual attributes, 
# the tags that you put in your web page, you can Define CSS that applies just to
# those tags. Moreover, you can write your CSS so that it matches its styling, 
# two things that have one type of tag. One type of class or one type of ID you
# could give every object in your webpage, a class on an ID. And there's a lot 
# of cascading that goes on in the system. For example, CSS that you write in an
# individual tag attribute will override any CSS that you define globally in the
# header and any CSS that you've defined globally in the header will override. 
# Any CSS that you imported from an external CSS. File the same with CSS applies
# to invent individual ID, that will overwrite any CSS that Applies to the class
# of an attribute. If the attribute has the ID that you're looking at any CSS, 
# apply to a specific class will override any CSS that applies to the tag. So 
# this is where the CNC assistant comes from. There's a cascading system here 
# at the end of the day. This is a very efficient way to style the components 
# of your webpage, but you'd also probably want to know a little bit about CSS
# before you use this in your shiny app. Luckily there's some free online 
# tutorials about HTML and CSS. They're very easy to follow and you can Google
# them. Find them that way shiny apps. Use a CSS framework known as bootstrap.
# So CSS has the that's designed to work. With the bootstrap framework will work
# best with your shiny apps. When it comes, time to style, your shiny apps, you 
# can use CSS in. The same way you could link to an external CSS file. You could
# write CSS globally in the header of your apps UI HTML page, or you could 
# provide CSS in the tag attributes for each of the elements in your app. If 
# you want to link to an external CSS file, put it in the www folder of your app.
# Then inside fluid page, set the theme argument to that files name. So here, if 
# I put a file called, boots, watch - Cerulean dot CSS into my www folder. I 
# could include it in my app by setting theme equal this Alternatively, you 
# could use the head function, the tags list to insert things into the head of 
# your HTML document for your UI page. Then inside the head you could call tags
# dollar, sign link to link to a CSS style sheet in the way that you normally 
# would for a web page, that link will go right into the header of your, you eyes
# webpage. If you want to write CSS in your header, then you could do that by 
# using tags dollar sign head to create the head. And then using tags dollar sign
# style and then HTML function to write actual CSS, right there in your UI script.
# It will be added to the header of your app. You could also call include CSS that
# include functional looked out before that will import the CSS into the header of
# your app, the actual CSS. In the finally, if you want to add CSS to your 
# elements, tag attributes, then use the tags functions and set the style argument
# of those functions to the CSS. Lets you apply to that attribute right there. 
# So let's recap, styling with CSS, you can style your shiny apps like web pages 
# with CSS, shiny relies on the bootstrap 3, CSS framework, that's where the 
# styling that already exists in. Your shiny apps comes from. And if you want to
# add to it, you should use CSS styling that. He's nicely with bootstrap 3, 
# you can recreate HTML methods, for including CSS, with tags, head tags, link
# and tags style. Now, if you're not familiar with CSS, thank you for sitting 
# through this. You've been a very good sport and if you are familiar with CSS
# before you use these methods, ask yourself if maybe you could use HTML template
# function to do this in a more streamlined way. We're near the end of the course.
# I'll see you in the last video.