require 'sinatra'
require 'onebox'
require 'uri'

get '/previews' do
  url = params['url']
  if url.nil?
    halt 400, "Missing parameter 'url'"
  end
  Onebox::Engine::WhitelistedGenericOnebox.whitelist << URI(url).host
  preview = Onebox.preview(url)
  preview.to_s
end