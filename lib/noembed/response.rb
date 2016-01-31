class NoEmbed::Response
  attr_reader :url, :fields

  def initialize(response, provider, url)
    @response = response
    @provider = provider
    @url = url

    assert_required_fields
  end

  def as_json(*)
    @fields
  end

  def to_json(*args)
    as_json.to_json(*args)
  end

  protected

  def assert_required_fields
    missing_fields = ["html", "title", "url", "provider_name"].select do |name|
      not @response.fields.has_key? name
    end

    unless missing_fields.empty?
      warn "Response by #{@provider.name} is missing fields: #{missing_fields.join(", ")}"
    end

    @fields = defaults.merge(@response.fields)
  end

  def defaults
    {
      "provider_name" => @provider.name,
      "title" => "Unknown",
      "html" => "",
      "url" => @url
    }
  end
end
