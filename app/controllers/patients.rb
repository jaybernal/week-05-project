################# Index
get "/patients/?" do 
	@patients = Patient.all
	erb :"patients/index"
end
################# New
get "/patients/new/?" do
	@patient = Patient.new
	erb :"patients/new"
end
################# create
post "/patients/?" do
	@patient = Patient.new(params)
	if @patient.save
		redirect to("/patients")
	else
		erb :"patients/new"
	end	
end
################# shows
get "/patients/:id/?" do
	@patient = Patient.find_by_id(params["id"])
	erb :"patients/show"
end
#########EDIT
get "/patients/:id/edit/?" do
	@patient = Patient.find_by_id(params["id"])
	erb :"patients/edit"
end
#########UPDATE
patch "/patients/:id/?" do
	@patient = Patient.find_by_id(params["id"])
	if @patient.update_attributes(name: params["name"],
																gender:params["gender"],
																organs_list:params["organs_list"],
																term_date:params["term_date"])
		redirect to("/patients/#{@patient.id}")
	else
		erb :"patients/edit"		
	end
end