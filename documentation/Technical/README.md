# Code documentation

## Front-end

`HTML, CSS, JavaScript`

## Back-end

`MySQL & PHP`

<a href="../../public/js/LanguageHandler.js" target="_blank"><h2>LanguageHandler.js</h2></a>

## To get started with the LanguageHandler we have to understand how it's code is built.

When going to data.json located in /web/data.json we can see something like the following:

```json
"nl": {
        "index": {
            "Overview": "SDG Overzicht",
            "PlaySDG":"Speel de SDG Game!",
            "OurSDGs":"Onze SDGs"
        },
        "contact": {
            "Title":"Neem contact met ons op"
        }
    }, ...
```

## Let's break it down:

This is the language, since we only support nl and en we only have two of these.

```json
"nl": { ...
```

Index represents the page, in our example we have index and contact, these represent the individual pages their data are linked to.

```json
"index": { ...
```

This represents our variable, and its value, with this we can call "data.nl.index.Overview" to figure out exactly what the Dutch value is for the Overview.

```json
"Overview" : "SDG Overzicht",
```

## So how does it work in practice?

We have LanguageHandler.js, although it may seem intimidating at first, there's only one function we have to look at, that is:

```js
// Actually changes text to text in data.json
const doLanguageInput = (data) => {
  // checks if index.php by checking if SDG_Overview exists
  if (document.getElementById("SDG_Overview")) {
    document.getElementById("SDG_Overview").innerHTML = data.index.Overview;
    document.getElementById("play_SDG").innerHTML = data.index.PlaySDG;
    document.getElementById("our_SDGs").innerHTML = data.index.OurSDGs;
  }
  // Checks if contact.html by checking if contact_title exists
  else if (document.getElementById("contact_title")) {
    document.getElementById("contact_title").innerHTML = data.contact.Title;
  }
};
```

As seen in the comments there's alot going on, this part of code although it looks different is actually a function:

```js
function prototype(argument) {...} === const prototype = (arg) => {...}
```

data is our the same as our data.json, except the functions prior in the code that we wont be looking at are choosing only to send the language necessary. That means that if the language is "nl", then the "data" argument will be:

```json
"nl": {
        "index": { ...
```

The only thing it doesn't send is the page we're currently on, for this we use a different part of the function.

```js
if (document.getElementById("SDG_Overview")) { ...
```

This essentially just checks if a certain element with an ID exists on the current loaded html, in this case this would check if index.php exists because index.php has:

```html
<h2 id="SDG_Overview">SDG Overview</h2>
```

The last part of our code may look the most confusing, but it's actually really simple!

```js
document.getElementById("SDG_Overview").innerHTML = data.index.Overview;
document.getElementById("play_SDG").innerHTML = data.index.PlaySDG;
document.getElementById("our_SDGs").innerHTML = data.index.OurSDGs;
```

We're using the ID's on the page, for this that is index.php and it has the ID's

```html
...
<h2 id="SDG_Overview">SDG Overview</h2>
...
<h2 id="play_SDG">Speel de SDG Game!</h2>
...
<h2 id="our_SDGs">Onze SDGs</h2>
...
```

Since all of these have data inside, aka the text inside since they're h2's ("SDG Overview", etc...), they have an innerHTML attribute, this essentially just means the text inside, for example we could say:

```js
document.getElementById("play_SDG").innerHTML = "Hello world!";
```

to change our html code to:

```html
<h2 id="play_SDG">Hello world!</h2>
```

The last part of our code is the most confusing since we're using our json data:

```js
....innerHTML = data.index.Overview;
```

this essentially just grabs the current data from our data argument and takes whatever the value of it is. In this case that is:

```json
"nl": {
        "index": {
            "Overview": "SDG Overzicht"
```

That wraps up the documentation thusfar,

Happy coding!
