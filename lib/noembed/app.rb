class NoEmbed::App < Sinatra::Base
  set :root, File.join(File.dirname(__FILE__), "..", "..")

  get "/" do
    erb :index
  end

  get "/embed" do
    url = params[:url]

    if url.nil? or url.empty?
      return respond_with missing_url_object
    end

    response = begin
      NoEmbed::Providers.get(url, embed_options)
    rescue OEmbed::NotFound
      return respond_with not_found_object(url)
    end

    respond_with response || unknown_url_object(url)
  end

  get "/providers" do
    respond_with NoEmbed::Providers.all
  end

  get "/status" do
    respond_with status_object
  end

  protected

  def respond_with(object)
    json = JSON::dump(object)

    if params[:callback]
      content_type "text/javascript", :charset => 'utf-8'
      "/**/#{params[:callback]}(#{json})"
    else
      content_type :json, :charset => 'utf-8'
      json
    end
  end

  def embed_options
    ["maxwidth", "maxheight"].each_with_object({}) do |k, hash|
      hash[k] = params[k] if params.has_key?(k)
    end
  end

  def status_object
    {
      status: "ok",
      version: NoEmbed::Version
    }
  end

  def missing_url_object
    {
      url: nil,
      error: "url parameter is required"
    }
  end

  def not_found_object(url)
    {
      url: url,
      error: "Not Found"
    }
  end

  def unknown_url_object(url)
    {
      url: url,
      error: "no matching providers found"
    }
  end
end
