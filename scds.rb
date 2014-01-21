require 'gopher2000'
set :host, '0.0.0.0'
set :port, 7070

route '/gopher' do
	"Greetings from Gopher 2000!"
end

route '/' do
	render :index
end

menu :index do
	text 'Welcome to the Sherman Centre for Digital Scholarship'

	br(2)

	link 'About the Centre', '/about'
	br

	link 'Map of the Centre', '/map'
	br

	link "Who's Who in the Centre", '/who'
end




