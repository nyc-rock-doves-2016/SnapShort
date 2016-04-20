get '/prompts' do
  @prompts = Prompt.all
  erb :'/prompts/index'
end

get '/prompts/new' do
erb :'prompts/new'
end

post '/prompts' do
  prompt = Prompt.new(params[:prompt])
  if prompt.save
    redirect "/prompts/#{prompt.id}"
  else
    erb :'/prompts/new'
  end
end

get '/prompts/:id' do
  @prompt = Prompt.find_by(id: params[:id])
  erb :'/prompts/show'
end

delete '/prompts/:id' do
  prompt = Prompt.find(params[:id])
  prompt.destroy
  redirect "/prompts"
end


# Prompts:
# get '/prompts' -index
# get 'prompts/new' -prompt creation page
# post 'prompts' - create
# get 'prompts/id' - show (include shorts form -- 'post /prompts/:id/shorts')
# delete 'prompts/id' - delete
