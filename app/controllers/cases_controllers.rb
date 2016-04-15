#########INDEX
get "/cases/?" do 
	@cases = Case.all
	erb :"cases/index"
end
################# New
get "/cases/new/?" do
	@case = Case.new
	erb :"cases/new"
end
################# create
post "/cases/?" do
	@case = Case.new(params)
	if @case.save
		redirect to("/cases")
	else
		erb :"cases/new"
	end	
end
################# shows
get "/cases/:id/?" do
	@case = Case.find_by_id(params["id"])
	erb :"cases/show"
end
################# Edit
get "/cases/:id/edit/?" do
	@case = Case.find_by_id(params["id"])
	erb :"cases/edit"
end
################# update
patch "/cases/:id/?" do
  @case = Case.find_by_id(params['id'])
  if @case.update_attributes(number: 					params["number"],
                             coordinator_id: 	params["coordinator_id"],
                             auditor_id: 			params["auditor_id"],
                             hospital_id: 		params["hospital_id"])
    redirect to("/cases/#{@case.id}")
  else
    erb :"cases/edit"
  end
end
