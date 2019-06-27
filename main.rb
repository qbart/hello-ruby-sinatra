require 'bundler' ; Bundler.require

get '/' do
  "hello world"
end

get '/healthcheck' do
  "ok"
end
