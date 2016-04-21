get '/prompts/:id/shorts' do
	@prompt = Prompt.find(params[:id])
	@user = User.find_by(id: session[:id])
  if logged_in?
    erb :'shorts/new'
  else
    redirect '/login'
  end
end

post '/prompts/:id/shorts' do
	@prompt = Prompt.find(params[:id])
	@short = Short.new(params[:short])

	if @short.save
		redirect "prompts/#{@prompt.id}"
	else
		erb :'/shorts/new'
	end
end

get '/shorts/:id' do
	@short = Short.find(params[:id])
	erb :'/shorts/show'
end

delete '/shorts/:id' do
	@short = Short.find(params[:id])
	@short.destroy
	redirect '/prompts'
end
