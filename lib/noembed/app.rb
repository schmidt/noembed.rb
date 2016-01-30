class NoEmbed::App < Sinatra::Base
  set :root, File.join(File.dirname(__FILE__), "..", "..")

  get "/" do
    erb :index
  end

  get "/embed" do
    content_type :json
    JSON::dump(unknown_url(params[:url]))
  end

  get "/providers" do
    content_type :json
    JSON::dump(providers)
  end

  get "/status" do
    content_type :json
    JSON::dump(status)
  end

  protected

  def providers
    []
  end

  def status
    {
      status: "ok",
      version: NoEmbed::Version
    }
  end

  def unknown_url(url)
    {
      url: url,
      error: "no matching providers found"
    }
  end
end
