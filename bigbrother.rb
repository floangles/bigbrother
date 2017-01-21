require 'sinatra'

get '/' do
  haml :index, layout: :layout
end

helpers do
  def img(name)
    "<img src='assets/images/#{name}' alt='#{name}' />"
  end
end
