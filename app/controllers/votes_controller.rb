post '/prompts/:id/votes' do
  @prompt = Prompt.find(params[:id])
  @prompt.votes.create(params[:vote])
  redirect "/prompts/#{@prompt.id}"
end

post '/shorts/:id/votes' do
  @short = Short.find(params[:id])
  @short.votes.create(params[:vote])
  redirect "/prompts/#{@short.prompt.id}"
end
