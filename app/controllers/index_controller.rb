require "sinatra"

get "/:birthdate" do
setup_index_view
end

get "/message/:birth_path_num" do
birth_path_num = params[:birth_path_num].to_i
#@birth_path = "Your birthpath number is #{birth_path_num}."
@message = "#{Person.birth_message(birth_path_num)}"
erb :show
end

get "/" do
erb :index
end

post "/" do
birthdate = params[:birthdate].gsub("-","")
if Person.valid_birthdate(birthdate)
	birth_path_num = Person.get_birth_path_num(birthdate)
	redirect "/message/#{birth_path_num}"
else 
@error = "Oops! You should enter a valid birthdate in the form of mmddyyyy. Try again!"
erb :index
end
end

def setup_index_view
birthdate = params[:birthdate]
@birth_path_num = Person.get_birth_path_num(birthdate)
@message = "#{Person.birth_message(@birth_path_num)}"
erb :show
end

