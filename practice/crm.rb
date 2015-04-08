require 'sinatra'

get '/' do
    puts params
    "Hello w0rld!"
    erb :index
end

# for every request that come sin there is a pecial hash made, called params hash

get '/hello/:name' do
  puts params
  @name = params[:name].capitalize
  erb :hello
end

# views are html templates in which we can insert ruby
# get '/' do
# erb :index
# end
# erb stands for embedded ruby
