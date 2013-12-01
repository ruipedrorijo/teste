# myapp.rb
require 'sinatra'

get '/' do
  'Hello world!'
end
get '/hello/:name' do
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params[:name] is 'foo' or 'bar'
  "Hello #{params[:name]}!"
end
get '/say/*/to/*' do
  # matches /say/hello/to/world
  params[:splat] # => ["rui", "ze"]
end

get '/download/*.*' do
  # matches /download/path/to/file.xml
  params[:splat] # => ["path/to/file", "xml"]
end
get '/download/*.*' do
  # matches /download/path/to/file.xml
  params[:splat] # => ["path/to/file", "xml"]
end
