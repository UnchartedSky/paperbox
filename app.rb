require 'sinatra'
require 'onebox'
require 'uri'

set :run, true
set :bind, '0.0.0.0'
set :logging, true
set :dump_errors, true

get '/previews' do
  url = params['url']
  if url.nil?
    halt 400, "Missing parameter 'url'"
  end
  Onebox::Engine::WhitelistedGenericOnebox.whitelist << URI(url).host
  preview = Onebox.preview(url)
  preview.to_s
end