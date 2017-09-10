if @clients.empty?
	node(:notice){"No Clients Found"}
else
	collection @clients
	attributes :id, :name, :mobile, :email, :website
end

