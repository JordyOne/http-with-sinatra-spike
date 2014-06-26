require "sinatra/base"


class MyApp < Sinatra::Application

  def initialize
    super
    @items = ["Jeff", "Graham", "Cam"]
  end

  get '/' do
    erb :index, :locals => {:items => @items}
  end

  get '/items' do
    "How many items are here? #{@items.length}"
  end

  get 'items/:name' do |n|
    "Hello, #{n}!"
  end

  get "/items/:identifier" do
    identifier = params[:identifier]
    "you found item '#{@items[identifier.to_i]}' and its identifier is #{identifier.to_i + 1}"
  end

    run! if app_file == $0
  end

