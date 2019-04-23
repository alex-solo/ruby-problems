require "sinatra"
require "sinatra/reloader"
require "tilt/erubis"
require "yaml"

before do
  @users = YAML.load(File.open("data/users.yaml"))
end

helpers do
  def count_interests
    all_interests = []
    @users.values.each do |attributes|
      all_interests += attributes[:interests]  
    end
    all_interests.size
  end
end

get "/" do
  erb :home
end

get "/user/:name" do
  @user_name = params["name"].to_sym
  @other_users = @users.keys.select { |name| name != @user_name }
  @email = @users[@user_name][:email]
  @interests = @users[@user_name][:interests].join(', ')
  erb :user
end