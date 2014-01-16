# Sinatra Sandbox 
 
##Learning Competencies 

##Summary 

 We're going to build ourselves a Sinatra sandbox that we can use to better understand the flow of data through a web application.

## Learning Goal

By the end of this challenge, you should be able to answer questions like:

1. Where does the browser "enter" my code?
2. Where does the server "return back" to the browser?
3. When do views get rendered?

**Don't rush through this challenge!**

As always, you can [get the Sinatra skeleton here](http://cl.ly/2n3D2V0R0L2f).

## Objectives

### `puts` debugging

`puts` debugging is something every developer does regularly.  When confronted with total confusion about how parts of the code are interacting with each other, a developer will place `puts` statements everywhere to see what methods are called when and what's happening inside each method.

This isn't cheating, this isn't giving up, this isn't something beginners do.  In the Real World™ nobody cares if you debug a problem using `puts`, they only care that you debugged the problem.

We're going to use `puts` debugging on this Sinatra app.

### Build a Dummy App

In your controller code, add the following routes:

```ruby
get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

get '/cool_url' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  erb :get_cool_url
end

post '/cool_url' do
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  erb :post_cool_url
end
```

Create `index`, `get_cool_url`, and `post_cool_url` views.  The `get_cool_url` and `post_cool_url` views can contain whatever you want to make it easier for you to explore how Sinatra, forms, and the HTTP request cycle works.

Create a simple page with two forms in the `index` view.  It should have one text field; you can call it whatever you want.  It should also have a submit button.

The first form should submit a `GET` request to `/cool_url`.  The second form should submit a `POST` request to `/cool_url`.

### Add More Form Elements

Explore what happens when you add other kinds of form elements to your form.  Add fields of the following types:

* [Textarea](http://www.echoecho.com/htmlforms08.htm)
* [Radio buttons](http://www.echoecho.com/htmlforms10.htm)
* [Checkbox buttons](http://www.echoecho.com/htmlforms09.htm)
* [Select box](http://www.echoecho.com/htmlforms11.htm)

Observe how they interact with `params` on the server side.  Play around and add more logging if you want.

### Add New Form Element Names

Add the the following inputs to one or all of your forms:

```html
<input type="text" name="post[title]">
<input type="text" name="post[price]">
<textarea name="post[description]"></textarea>
```

How does this impact the `params` hash on the server side?

### Upload a Gist

Upload a gist that contains a link to your application's repository and a list of 5-10 questions you have about how Sinatra applications, the web, web applications in general, HTML forms, etc. work.

### Your Own Experiment

Come up with your own experiment to partially answer at least 2 of the questions you have from above.  What debugging statements (`puts` or otherwise) can you add to help you answer your question?

If you can't answer the entirety of your question, can you answer part of it?  For example, "I don't know where exactly something happens, but I know it happens after we call `erb`."

Make your question simple and small enough that you can see how to answer it.  Form hypotheses and devise tests to determine whether those hypotheses are true or false, or to what extent you can say they're true or false if you can't get an exact answer.

Even if you answer one small question you'll be closer to understanding how the whole machine works.

If it helps, we're really asking you to use the [scientific method](http://en.wikipedia.org/wiki/Scientific_method) to investigate how this opaque system called "a web application" operates.

Form a hypothesis.  Devise an experiment that could potentially contradict that hypothesis.  Run the experiment.  Does it confirm or contradict your hypothesis?

If you do this enough, you'll be very very clear on what you understand and what you don't understand, and you'll have a list a mile long of both things to go investigate but also a framework in which to investigate them.

### Submit!

Having at least partially answered a few of your own questions, submit your gist! 

##Releases
###Release 0 

##Optimize Your Learning 

##Resources