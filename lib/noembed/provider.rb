class NoEmbed::Provider
  attr_reader :name

  def initialize(name, provider = nil)
    @name = name
    @provider = provider
  end

  def get(url, options = {})
    NoEmbed::Response.new(@provider.get(url, options), self, url)
  end

  def register
    OEmbed::Providers.register(@provider)
  end

  def urls
    @provider.urls
  end

  def patterns
    # Removes leading /^ and trailing /
    @provider.urls.map { |r| r.inspect[2..-2] }
  end

  def as_json(*)
    {name: name, patterns: patterns}
  end

  def to_json(*args)
    as_json.to_json(*args)
  end
end
