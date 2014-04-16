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
	br

	link "About our hackerspace", '/hackerspace'
	br

	link "What is this?", '/what'

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
|					0 <-That is a	 |
|	 O  					Table	 |
|	\|/ This is a       	 			 |
|	 |	researcher				 |
|	/ \                                              |
----------------------------------------------------------
"
@map
end

route '/who' do
	render :who
end

route '/hackerspace' do
	render :hackerspace
end

route '/what' do
	render :what
end

text :about do
	@text = "The Sherman Centre strives to meet the following objectives:

	To provide a framework of research support for digital scholarship that optimizes library/researcher resource sharing.
	To provision customized and scalable IT infrastructure to support faculty and graduate student research projects in digital humanities/digital scholarship.
	To offer technical support and consulting services for digital scholarship projects, such as programming, data management, and systems administration.
	To promote and develop interdisciplinary digital scholarship networks by providing physical meeting and work spaces.
	To promote and disseminate McMaster University e-research through archival and access initiatives that interface with global e-research partners."
end

text :who do
	@text = "This is a line of text that tells you who works in the Centre.\nDale Askey\nDale Askey Bio\n\nSandra Lapointe\nSandra Lapointe Bio\n\nMatt McCollow\nMatt McCollow Bio\n\nGabriela Mircea\nGabriela Mircea Bio\n\nJohn Fink\nJohn Fink Bio"
end

text :hackerspace do
	@text = "This is a line of text that tells you about our hackerspace."
end

text :what do
	@text = "This is a Digital Equipment Corporation VT320 terminal, hooked up to a Raspberry Pi running Raspbian Linux, with a Gopher server written in the Ruby programming language and using Lynx as a Gopher browser. This type of setup was very common in universities in the early 1990s; Gopher, invented right about the same time as the World Wide Web, was initially favoured because it was kinder on the limited network resources of the time. By 1993 however, the Web had become the preferred protocol for networked hypertext, and Gopher faded into mostly deserved obscurity. Today there are less than 500 active Gopher servers worldwide."
end

