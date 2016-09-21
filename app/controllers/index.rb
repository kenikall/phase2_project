get '/' do
  if session['prefered_name']
    erb "teacher/#{teacher.id}"
  else
    erb :index
  end
end

post '/' do
  erb :'teacher/new'
end

