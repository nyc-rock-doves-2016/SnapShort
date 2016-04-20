get '/login' do
  erb :'sessions/new'
end

post '/login' do
  user = User.find_by(id: params[:user][:id])
  if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id
  else
    @errors = ["Wrong username or password"]
    erb :'/sessions/new'
  end
end

delete '/logout' do
  session.clear
  redirect '/'
end
