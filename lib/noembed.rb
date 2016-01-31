# Load libraries
require "json"

# Load bundled gems
require 'rubygems'
require 'bundler'

Bundler.require

# Define main name space
module NoEmbed
end

# Load actual code
require "noembed/app"
require "noembed/provider"
require "noembed/providers"
require "noembed/response"
require "noembed/version"
