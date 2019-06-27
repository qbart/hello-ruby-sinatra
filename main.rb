require 'bundler' ; Bundler.require

set :bind, '0.0.0.0'

get '/' do
  "hello world"
end

get '/healthcheck' do
  "ok"
end
