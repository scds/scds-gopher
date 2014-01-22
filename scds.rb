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
	text 'Welcome to the Sherman Centre for Digital Scholarship Gopher Server'

	br(2)

	link 'About the Centre', '/about'
	br

	link 'Map of the Centre', '/map'
	br

	link "Who's Who in the Centre", '/who'
end


route '/about' do
	render :about
end

route '/map' do
	@map = 
"
----------------------------------------------------------
|                                                        |
|              This is                                   |
|		a					 |
|	       Map					 |
|                                                        |
|                                                        |
|							 |
|							 |
----------------------------------------------------------
"
@map
end

route '/who' do
	render :who
end


text :about do
	@text = "This is a line of text that tells you what the Centre is about."
end

text :who do
	@text = "This is a line of text that tells you who works in the Centre."
end
