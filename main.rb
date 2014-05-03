require 'sinatra'

class Reservation
	attr_reader :rm
	attr_writer :rm
	attr_reader :dt	
	attr_writer :dt
end

get '/' do
	erb :index
end

get '/about' do
	erb :about
end

get '/rooms' do
	erb :rooms
end

get '/reserve' do
	erb :reserve
end

post '/newroom' do
	@r = Reservation.new
	@r.rm = params[:roomtype]
	@r.dt = params[:date]
	erb :newroom
end
