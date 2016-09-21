get '/teacher/new' do
  erb :'teacher/new'
end

post '/teacher' do
  teacher = Teacher.new(params[:email])
  teacher.password = params[:password]
  if user.save
    session["prefered_name"] = teacher.prefered_name
    redirect :"/teacher/#{teacher.id}"
  else
    @errors = user.errors.full_messages
    redirect :'teacher/new'
  end
end

get '/teacher/:id' do
  erb :'teacher/show'
end
