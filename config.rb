require 'slim'

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }


# General configuration

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
  set :site_url, "http://localhost:4567"
end


#####################################################################
# Helpers
#####################################################################

helpers do
  require 'helpers/url_helpers'
  include UrlHelpers

  require 'helpers/asset_helpers'
  include AssetHelpers
end

# Build-specific configuration
configure :build do
  set :site_url, "http://eacos.github.io/eacos-homepage/"

  # Ignore the partials in stylesheets
  ignore 'stylesheets/_*.scss'
  ignore 'stylesheets/bootstrap/*'

  # Ignore the partials in javascripts
  ignore 'javascripts/_*.js'
  ignore 'javascripts/vendor/*'

  activate :minify_css
  activate :minify_javascript

  # add hash key to the assets for cache busting
  # (make sure to use the url helpers for this to work)
  activate :asset_hash
end

activate :directory_indexes

activate :relative_assets
set :relative_links, true

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
end

