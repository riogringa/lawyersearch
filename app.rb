require 'bundler'
Bundler.require


ActiveRecord::Base.establish_connection({
  adapter: 'postgresql'})

require_relative 'models/lawyer'

get '/' do
  erb :index
end

#get '/lawyers/:id' do
# @lawyer = Lawyer.find(params[:id])
 #erb :show
 #end

get '/lawyers' do
  @city = params['city_name']
  @lawyers = Lawyer.where(city: params[:city_name])
  erb :show
 end
