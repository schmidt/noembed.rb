require 'rubygems'
require 'bundler'

Bundler.require

$LOAD_PATH.unshift("lib")
require "noembed"

run NoEmbed::App
