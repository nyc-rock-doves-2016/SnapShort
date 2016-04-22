post '/prompts/:id/votes' do
  prompt = Prompt.find(params[:id])
  prompt.votes.create(params[:vote])

  if request.xhr?
    return "#{prompt.points}"
  else
    redirect "/prompts/#{prompt.id}"
  end
end

post '/shorts/:id/votes' do
  @short = Short.find(params[:id])
  @short.votes.create(params[:vote])
  if request.xhr?
    return "#{@short.points}"
  else
    redirect "/prompts/#{@short.id}"
  end
end
