#########INDEX
get "/coordinators/?" do 
	@coordinators = Coordinator.all
	erb :"coordinators/index"
end

#########NEW
get "/coordinators/new/?" do
	@coordinator = Coordinator.new
	erb :"coordinators/new"
end

#########CREATE
post "/coordinators/?" do
	@coordinator =  Coordinator.new(params)
	if @coordinator.save
		redirect to("/coordinators")
	else
		erb :"coordinators/new"
	end
end

#########SHOW
get "/coordinators/:id/?" do
	@coordinator = Coordinator.find_by_id(params["id"])
	erb :"coordinators/show"
end

#########EDIT
get "/coordinators/:id/edit/?" do
	@coordinator = Coordinator.find_by_id(params["id"])
	erb :"coordinators/edit"
end
#########UPDATE
patch "/coordinators/:id/?" do
	@coordinator = Coordinator.find_by_id(params["id"])
	if @coordinator.update_attributes(name: params["name"],
		phone:params["phone"],
		email:params["email"])
		redirect to("/coordinators/#{@coordinator.id}")
	else
		erb :"coordinators/edit"		
	end
end

#########DESTROY

