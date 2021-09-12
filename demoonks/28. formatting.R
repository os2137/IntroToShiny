# Description
# These functions let you add static html elements to your apps.

# Transcription
# Now that you could lay elements out in your app in the way you'd like them to be
# related to each other. Let's look at how you can actually change the appearance
# of the elements. You know, the visual style of those elements. Shiny comes with
# a list of functions. Name tags tags is the name of the list. Each element of 
# that list is a function that you can use in each of those functions, recreates,
# an HTML tag. So, if you were to use HTML to write a web page, when you want 
# bold text, you would use a tag that designates Certain amount X is bold. When
# you want to make italic text, you do the same thing. You'd use a tag that does
# that. If you want to make a web link, you'd use a tab that creates a web link.
# Well, the shiny tags function, recreates, all of those tags. Here's a list of 
# some of the names right here on this slide. You could type in names, tags to 
# see all of the names. I believe there's over a hundred of them, and they should
# do something different. If you get confused about what any of them do, you 
# could Google these names because they're the names of the HTML tags. And these
# functions will do the same. Same thing that those HTML tags do. So, for example,
# the tags H1 function is the equivalent of the H1 tag in HTML and the tags. 
# A function is equivalent of the a tag in HTML. Now, notice the syntax I have 
# here after tags tags dollars on H1 is just the code that would be inside that
# function. If you actually want to run the function, you have to put a 
# parentheses after H1. This is legitimate, you might not have seen anything 
# in our like this before but that's how you run a function that's saved in a 
# list. The Syntax for each of the tags functions is the same. The named 
# arguments that you give the function will turn into the attributes of the 
# HTML tag. So for example, tags do is sign a that creates a web link in HTML 
# the a tag. If you set H ref equal to this website rstudio.com then that will 
# add an H ref attribute into the tag. You can set any named arguments. You want
# inside tags function, those will become named attributes of the tag. Now 
# whether or not that's going to make sense at the end HTML will depend on 
# what names you've chosen. Any arguments you give two tags that do not have 
# a name. Like, rstudio here will appear inside the tag. It will be the thing 
# that the tag object modifies. So this would modify the text rstudio with this 
# tag at the bottom of the page does, is it inserts the word rstudio into a 
# document, it makes it a hyperlink to the website www.sceeto.com. So let's 
# review that you look in the tags list to find these functions. The function 
# will have the same name as the HTML. Tag, you're thinking of named arguments
# will be added as tag attributes for that HTML tag. And then unnamed arguments
# will be the things that that tag modifies. There are plenty of tags, and they
# all do different things. And I don't expect you to already know what HTML tags
# exist in what they do, what I'd like to do for the next few minutes is just go
# through the most useful tags functions that you might use to modify elements of
# your app and we'll start with the H1 through H6 tags. These make headers First 
# level headers through six level headers so tag Starsign H1. If you put this in 
# your UI here and rendered it, you would get what you see here on the right. 
# First level becomes a first level header. That's the biggest type of header H2,
# makes a second level header, little smaller. And so on the third level, fourth 
# level, fifth level and six level. You notice first level, second, level, third 
# level, fourth level, fifth level, and six level. None of those have a name which
# makes them the text that the H1 actually modifies. The, a tag creates a 
# hyperlink. We saw how it worked in the syntax example, but a hyperlink is going
# to need an H ref attribute. So, set the href argument to the webpage, that the 
# tag should link to. And then it's gonna need some text, that be an unnamed 
# argument. And that's the textile appear on your page that you can click on. 
# If you want to put text in your shiny app, you don't need to bother with tags.
# You can just put raw text into your app, but shiny will put that text together.
# So there's no paragraph breaks between the separate lines of text. If you want 
# a paragraph break you need to use the P tag P for paragraph. So now each line 
# of text becomes its own paragraph. All the texts you put inside tag Starsign P 
# will become its own paragraph together. Different calls the tag source IP will 
# make different paragraphs. Use the e/m tag to make text. Just wrap that text in
# the tag, use the strong tab, to make text bold again, just wrap that in the tag,
# use the code tag, to make text appear in a mono, space code font and then if you
# want, you can Nest these tags inside each other. So here's how you make a 
# paragraph. That has one word of strong text and you can keep nesting tags inside
# each other. As you go nesting, is something that's very extensively used in HTML
# and you can recreate what these tag functions. If you want a line break to 
# appear use the tags dollar sign be our function. If you want a horizontal 
# rule, use HR. Horizontal rule is just a light grey line that goes horizontally
# across the page if you want to insert an image, use tags dollar sign IMG. Now,
# images will require some arguments, you could provide a height argument to set
# the height of the image in your web page set that equal to the number of pixels.
# It should be Or you could fight with argument or both the set, the height and 
# the width and then you need to provide an SRC argument to the source of the 
# image. This Source could be a URL of the image is hosted online, or it can be a
# file path to an image that you have saved in your app. Directory, the way to 
# save an image in your app directory is to create a www folder and the place 
# that image in that folder, this is important. Because remember I mentioned 
# earlier, Juror that everything you put inside www folder will be shared with 
# your users web browser and if you want that web browser to insert an image into
# the app, you need to share that image with the web browser by putting in the 
# www folder, shiny will give the image to the web browser that your users using
# when it gives them the app and they'll be able to plot that image. If we go 
# over to our studio for just a second, in the demos folder, Of the class material
# , I've added a www folder and it contains a single image called shiny.rstudio.com
# image and some other style tags to do this exercise. I want you to take the 
# sidebar app that you had and make it look like the app we see on this screen 
# that shiny image, that's right. There is the PNG that I gave you in the www 
# folder, underneath the image. It says powered by shiny and I've used some italic
# text. Made shiny a web link that goes to shiny.rstudio.com. See if you could add
# those elements to your app. Look at the model answer in exercises folder. If you
# get stuck and if you're going to make this app work, you're probably gonna need
# to take that folder www. A lot of the demos folder and put it in your app 
# directory. Whatever that directory happens to be for this app. Give that a try
# consult them all answer if you get stuck and then I'll see you in the next video.