require 'sinatra'
require 'haml'
require 'shangrila'
require 'sequel'

configure do
  # 静的コンテンツ参照のためのパス設定
  set :public, File.dirname(__FILE__) + '/public'

  puts "-------LOAD-------"
  set(:master) { Shangrila::Sora.new().get_map_key_id(2015, 4) }
end

get '/' do
  haml :index
end

get '/recommend' do
  @id = params[:twid]
  twitter_name =  @id
  @master = settings.master
  @cf_data = []
  @prediction = []
  @un_prediction = []

  DB = Sequel.mysql2('tippy1', :host=>'localhost', :user=>'root', :password=>'', :port=>'3306')

  id = DB[:twitter_user].filter(:name => twitter_name).select(:id).first

  if id != nil
    @cf_data =  DB[:cf_input_rating].filter(:id => id[:id]).order(:rate).reverse.all

    @prediction = DB[:prediction_csv].filter(:id => id[:id]).order(:rate).reverse.limit(10).all

    @un_prediction = DB[:prediction_csv].filter(:id => id[:id]).order(:rate).limit(5).all
  end

  haml :result
end
