require 'launchy'

def take_break
	
	while(true)
		sleep(60)
		Launchy.open("http://stackoverflow.com")
	end
end

take_break()


