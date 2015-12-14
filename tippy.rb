require 'sinatra'
require 'haml'
require 'shangrila'

configure do
  # 静的コンテンツ参照のためのパス設定
  set :public, File.dirname(__FILE__) + '/public'

  puts "-------LOAD-------"
  set(:master) { Shangrila::Sora.new().get_map_key_id(2015, 4) }
end

get '/' do
  haml :index
end

post '/inputid' do
  @id = params[:inputId]
  p @id
  #settings.master
  haml :result
end
