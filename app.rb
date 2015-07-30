require 'bundler'
Bundler.require


ActiveRecord::Base.establish_connection({
  adapter: 'postgresql'})

require_relative 'models/lawyer'

get '/lawyers' do
  @lawyers = Lawyer.all
  erb :index
end

get '/lawyers/:id' do
  @lawyer = Lawyer.find(params[:id])
  erb :show
end