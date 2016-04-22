get '/prompts/:id/comments' do
  @prompt = Prompt.find(params[:id])
  @user = User.find_by(id: session[:id])
  if logged_in? && request.xhr?
    erb :'comments/_promptcomments'
  elsif logged_in?
    erb :'comments/index'
  else
    redirect '/login'
  end
end

get '/shorts/:id/comments' do
  @short = Short.find(params[:id])
  @user = User.find_by(id: session[:id])
  if logged_in?
    erb :'comments/index'
  else
    redirect '/login'
  end
end

post '/prompts/:id/comments' do
  @prompt = Prompt.find(params[:id])
  @comment = Comment.new(params[:comment])

    if @comment.save && request.xhr?
      erb :'comments/_comments', layout: false, locals: {comment: @comment}
    elsif @comment.save
      redirect "/prompts/#{@prompt.id}/comments"
    else
      @errors = @comment.errors.full_messages
      redirect "/prompts/#{@prompt.id}/comments"
    end
end

post '/shorts/:id/comments' do
  @short = Short.find(params[:id])
  @comment = Comment.new(params[:comment])
  if @comment.save
    redirect "/shorts/#{@short.id}/comments"
  else
    @errors = @comment.errors.full_messages
    redirect "/shorts/#{@short.id}/comments"
  end
end
