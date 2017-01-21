require 'sinatra'

set :bind, '0.0.0.0'

set :template_engines, {
  :css=>[:scss],
  :xml=>[],
  :js=>[],
  :html=>[:haml],
  :all=>[:haml],
  :json=>[]
}

get '/' do
  haml :index, layout: :layout
end

helpers do
  def img(name)
    "<img src='assets/images/#{name}' alt='#{name}' />"
  end
end
