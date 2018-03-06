# Chowdown

A simple, plaintext recipe database for hackers

Forked from [http://clarklab.github.io/chowdown](http://clarklab.github.io/chowdown).

You've just stumbled into **Chowdown**, a plain text recipe database for hackers. Over the years, I've tried dozens of recipe apps and services in an attempt to eat better and get more organized. With each app came a new format and <em>recipe lock-in</em>, neither of which got me excited.

**Chowdown** is my attempt at extending [Clarklab](https://github.com/clarklab)'s excellent work at fixing recipe app burnout, by moving my recipes out of closed services and into plain text. For example, here's [a recipe in plain text][1] that I found online, and then added to the repo.

[Here's that same recipe processed with **Chowdown**.][2] It's a simple layout with a photo, ingredient list, and directions.

The magic comes behind-the-scenes, with [recipe microdata via schema.org][3]. This process adds special tags around each bit of content, which is what let's other apps (list coming soon) read your recipes. Data portability!

**Chowdown** is definitely a work in progress. Active development is taking place. I'm new to Jekyll. Things might break. The recipes, however, are here to stay.
  
Go cook something rad,  
    Sean
    [@\_seanlane][4]

[1]:https://raw.githubusercontent.com/seanlane/chowdown/master/_recipes/pepperoncini-pork.md
[2]:http://recipes.lane.sh/recipes/pepperoncini-pork.html
[3]:http://schema.org/Recipe
[4]:http://twitter.com/_seanlane

# Installing

This project uses the bundler gem to install all the dependencies.

Inital setup (if needed):

* [Install Ruby](https://www.ruby-lang.org/en/documentation/installation/), 
* [Install RubyGems](https://rubygems.org/pages/download)
* Install bundler: `$ gem install bundler`

Then run `bundler install` to get all the dependencies.

# Configuration

Modify the `_config.yml` file as needed. You'll probably just need to change  the `title`, `email`, `twitter_username`, and `github_username` fields to initially get going.

# Add recipes

Add recipes to the `_recipes` directory, using other recipe files as an example. Most of the fields are optional , though I'm not sure which ones will break the site if you don't add them. As long as it has at least a title, you're probably fine, though the recipe won't be very useful without ingredients or directions. To add an image, save the image you'd like to use in the `images/_original` directory, and then add the image filename to the `image` field in the recipe file. This tells the static site generator that you want to use that image for this recipe.

# Deploying the website

I use the `Makefile` in this website to build the site, and then move the generated site files to a webhost. You can do something similar, if you have one, or you could also host the site for free on [GitHub Pages](https://pages.github.com). Good luck!
