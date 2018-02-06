# [WIP] Website for: Ruby User Group Linz

![Rugl website teaser](http://a.storyblok.com/f/42586/3360x950/bb5b443a8d/rugl-at.png)

Made with [Jekyll](https://jekyllrb.com/) content managed with [Storyblok](https://www.storyblok.com) and deployed with [Netlify](https://www.netlify.com/).

## How to use

```
# 1. Clone this repo
git clone git@github.com:rugl-at/www.git

# 2. Install gems
bundle install

# 3. Run the Jekyll Build for a Static Site
jekyll build

# 4. Run the Rack Preview Setup for instant Preview in Storyblok
bundle exec rackup config.ru -p 4000
```

## You want to know whats going on here?

This Setup is based on the Storyblok Tutorial with the title: ["How to add a headless CMS to Jekyll"](https://www.storyblok.com/tp/headless-cms-jekyll).


## What is the easiest way to make this your own?

1. [Register a free Storyblok account](https://app.storyblok.com/#!/signup)
2. [Visit: https://app.storyblok.com/#!/build/42586](https://app.storyblok.com/#!/build/42586)
3. Change the "Location" in the Storyblok Settings to "http://localhost:4000/". 
4. Exchange the Preview Token in the `_plugins/storyblok_page.rb` with your own Storyblok Preview token.
5. Run the commands in "How to use"

## How to Deploy

We will use [Netlify](https://www.netlify.com/) to deploy this page.

```
# 1. Build
jekyll build

# 2. Use Netlify for deployment of the "_site" folder.
netlify deploy
```

[Current Version](https://cocky-chandrasekhar-b5997e.netlify.com)