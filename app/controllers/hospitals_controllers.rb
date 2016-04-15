#########INDEX
get "/hospitals/?" do 
	@hospitals = Hospital.all
	erb :"hospitals/index"
end
################# New
get "/hospitals/new/?" do
	@hospital = Hospital.new
	erb :"hospitals/new"
end
################# create
post "/hospitals/?" do
	@hospital = Hospital.new(params)
	if @hospital.save
		redirect to("/hospitals")
	else
		erb :"hospitals/new"
	end	
end
################# shows
get "/hospitals/:id/?" do
	@hospital = Hospital.find_by_id(params["id"])
	erb :"hospitals/show"
end
################# Edit
get "/hospitals/:id/edit/?" do
	@hospital = Hospital.find_by_id(params["id"])
	erb :"hospitals/edit"
end
################# update
patch "/hospitals/:id/?" do
  @hospital = Hospital.find_by_id(params['id'])
  if @hospital.update_attributes(name: params["name"],
                                city: params["city"],
                                phone: params["phone"])
    redirect to("/hospitals/#{@hospital.id}")
  else
    erb :"hospitals/edit"
  end
end