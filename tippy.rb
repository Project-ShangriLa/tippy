require 'sinatra'
require 'haml'

# 静的コンテンツ参照のためのパス設定
set :public, File.dirname(__FILE__) + '/public'

get '/' do
  haml :index
end

post '/inputid' do
  @id = params[:inputId]
  p @id
  haml :result
end
