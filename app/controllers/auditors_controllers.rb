################# Index
get "/auditors/?" do 
	@auditors = Auditor.all
	erb :"auditors/index"
end
################# New
get "/auditors/new/?" do
	@auditor = Auditor.new
	erb :"auditors/new"
end
################# create
post "/auditors/?" do
	@auditor = Auditor.new(params)
	if @auditor.save
		redirect to("/auditors")
	else
		erb :"auditors/new"
	end	
end
################# shows
get "/auditors/:id/?" do
	@auditor = Auditor.find_by_id(params["id"])
	erb :"auditors/show"
end
################# Edit
get "/auditors/:id/edit/?" do
	@auditor = Auditor.find_by_id(params["id"])
	erb :"auditors/edit"
end
################# update
patch "/auditors/:id/?" do
  @auditor = Auditor.find_by_id(params['id'])
  if @auditor.update_attributes(name: 	params["name"],
                                phone: params["phone"],
                                email: 	params["email"])
    redirect to("/auditors/#{@auditor.id}")
  else
    erb :"auditors/edit"
  end
end
