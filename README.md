## About this repository

This repostory is home to the source code for Edmonton's Entrepreneurial Advisory Council on Startups (EACOS).

## Development instructions

You will need to have git, ruby, and bundler installed to work with this
code base. The website is built using a framework called middleman that
makes it easy to build and manage html webpages.

Run `bundler install` in the home directory to install the dependencies.

Run `middleman serve` to start the webserver at [localhost:4567](http://localhost:4567/)

The webpage will reload when you make changes.


## Deploy instructions


To deploy changes to the website run:

```
middleman deploy
```

The config for the deploy is in `config.rb`. The website is hosted on
GitHub pages. When you run the deploy command middleman will compile the
source code to a static HTML website and then coommit it to the `_pages` branch and push this build to GitHub. GitHub will detect the change and update the website in a few minutes.

Always test your build first locally before deploying changes.

When you make a change, you need to commit the change using git and push it to the
repository on GitHub.
