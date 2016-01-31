module NoEmbed::Providers
  OEMBED_PROVIDERS = [
    NoEmbed::Provider.new("Flickr", OEmbed::Providers::Flickr),
    NoEmbed::Provider.new("Hulu", OEmbed::Providers::Hulu),
    NoEmbed::Provider.new("Imgur", OEmbed::Providers::Imgur),
    NoEmbed::Provider.new("Instagram", OEmbed::Providers::Instagram),
    NoEmbed::Provider.new("Major League Gaming TV", OEmbed::Providers::MlgTv),
    NoEmbed::Provider.new("MovieClips", OEmbed::Providers::MovieClips),
    NoEmbed::Provider.new("MyOpera", OEmbed::Providers::MyOpera),
    NoEmbed::Provider.new("National Film Board of Canada", OEmbed::Providers::NFBCanada),
    NoEmbed::Provider.new("Poll Everywhere", OEmbed::Providers::PollEverywhere),
    NoEmbed::Provider.new("Qik", OEmbed::Providers::Qik),
    NoEmbed::Provider.new("Revision3", OEmbed::Providers::Revision3),
    NoEmbed::Provider.new("Scribd", OEmbed::Providers::Scribd),
    NoEmbed::Provider.new("Skitch", OEmbed::Providers::Skitch),
    NoEmbed::Provider.new("SlideShare", OEmbed::Providers::Slideshare),
    NoEmbed::Provider.new("SoundCloud", OEmbed::Providers::SoundCloud),
    NoEmbed::Provider.new("Spotify", OEmbed::Providers::Spotify),
    NoEmbed::Provider.new("23", OEmbed::Providers::TwentyThree),
    NoEmbed::Provider.new("Twitter", OEmbed::Providers::Twitter),
    NoEmbed::Provider.new("Viddler", OEmbed::Providers::Viddler),
    NoEmbed::Provider.new("Vimeo", OEmbed::Providers::Vimeo),
    NoEmbed::Provider.new("Vine", OEmbed::Providers::Vine),
    NoEmbed::Provider.new("Yfrog", OEmbed::Providers::Yfrog),
    NoEmbed::Provider.new("YouTube", OEmbed::Providers::Youtube)
  ].each(&:register)

  def self.all
    OEMBED_PROVIDERS
  end

  def self.find(url)
    all.find { |p| p.urls.find { |u|  u =~ url }}
  end

  def self.get(url, options = {})
    provider = find(url)
    if provider
      provider.get(url, options)
    else
      nil
    end
  end
end
