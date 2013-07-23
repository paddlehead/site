##
# http://github.com/chriseppstein/sass-globbing
# http://github.com/Team-Sass/Singularity
require 'sass-globbing'
require 'singularitygs'
require 'singularity-extras'
require 'compass-normalize'

##
# Sass options:
# http://sass-lang.com/docs/yardoc/file.SASS_REFERENCE.html#options
sass_options = Hash.new

# Enable Sass inspection directly from the browser.
#
# Chrome Canary support (Applies to Webkit Nightlies as well.):
#   http://blog.q42.nl/post/35203391115/debug-sass-and-less-in-webkit-inspector-and-save-css-cha
# Firefox Extension:
#   https://addons.mozilla.org/en-US/firefox/addon/firesass-for-firebug
#
# Set to true to enable. Enabling will disable `line_comments`.
#
sass_options[:debug_info] = false

##
# Compass configuration:
# http://compass-style.org/help/tutorials/configuration-reference

# Development is the default environment. When compiling for production, this
# should be flagged as :production. This can be done through the command line
# with the following.
#
#   $ compass compile -e production --force
#

sass_dir             = "scss"
css_dir              = (environment == :production ? "css/prod" : "css/dev")
images_dir           = "images"
generated_images_dir = (environment == :production ? "images/prod" : "images/dev")
fonts_dir            = "fonts"
javascripts_dir      = "js"
relative_assets      = true
output_style         = :expanded

# https://github.com/wvanbergen/chunky_png/wiki/Constraints
sprite_engine        = :chunky_png
chunky_png_options   = (environment == :production ? :best_compression : :fast_rgba)