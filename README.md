noembed.rb
==========

This is a reimplementation of [noembed.com](https://noembed.com/) using
[Ruby](https://ruby-lang.org). It builds on
[ruby-oembed](https://github.com/judofyr/ruby-oembed) and
[Sinatra](http://www.sinatrarb.com/).


Supported providers
-------------------

*Please note:* Provider support is solely based on the ruby-oembed gem.

noembed.rb supports the following list of providers:

  * [Flickr](https://flickr.com/)
  * [Hulu](http://www.hulu.com/)
  * [Imgur](https://imgur.com/)
  * [Instagram](https://www.instagram.com/)
  * [Major League Gaming TV](http://tv.majorleaguegaming.com/)
  * [MovieClips](http://www.movieclips.com/)
  * [National Film Board of Canada](https://www.nfb.ca/)
  * [Poll Everywhere](https://www.polleverywhere.com/)
  * [Qik](https://www.skype.com/en/qik/)
  * [Revision3](https://revision3.com/)
  * [Scribd](https://www.scribd.com/)
  * [Skitch](https://evernote.com/skitch/)
  * [SlideShare](http://www.slideshare.net/)
  * [SoundCloud](https://soundcloud.com/)
  * [Spotify](https://www.spotify.com/)
  * [23](http://23hq.com/)
  * [Twitter](https://twitter.com/)
  * [Viddler](http://www.viddler.com/)
  * [Vimeo](https://vimeo.com/)
  * [Vine](https://vine.co/)
  * [YouTube](https://youtube.com/)


Getting started
---------------

### Running a server

This section will list instructions on how to run noembed.rb on Heroku,
BlueOcean and other Ruby hosting providers. Contributions are welcome.

Until then: noembed.rb is a simple modular sinatra app, which comes with a
Gemfile to define its dependencies and a config.ru for simple deployments. All
the rules, that apply to Sinatra applications, will also work on noembed.rb.

You won't need external services like storage, database access and such.


### Access from the client side

Follow the documentation on [noembed.com](https://www.noembed.com) and
[oembed.com](https://www.oembed.com). noembed.rb is just another oEmbed provider
aggregator and should not need any special handling.

*Please note:* Currently only JSON and JSONP responses are supported. We'll look
into XML and CORS support in future releases. Please create an issue, if you
have the need for any of that.


License
-------

noembed.rb is licensed under the terms of the GNU General Public License v3.  A
full version of the GNU General Public License may be found in the LICENSE.txt
file within this folder. If not, see http://www.gnu.org/licenses/.


    noembed.rb - oEmbed aggregator written in Ruby
    Copyright (C) 2016 Gregor Schmidt

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

