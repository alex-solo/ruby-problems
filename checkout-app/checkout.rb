require "sinatra"
require "sinatra/reloader"
require "sinatra/content_for"
require "tilt/erubis"

configure do
  enable :sessions
  set :session_secret, 'secret'
  set :erb, :escape_html => true
end

before do
  session[:payments] ||= []
end

helpers do
  # ****-****-****-1111
  def hide_card_num(card_num)
    string = "****-****-****-"
    last_digits = card_num[-4, 4]
    string + last_digits
  end

end

get "/" do
  session.delete(:payments)
  session.delete(:first_name)
  session.delete(:last_name)
  session.delete(:card_num)
  session.delete(:exp_date)
  session.delete(:ccv)
  redirect "/checkout"
end

get "/checkout" do
  erb :checkout
end

def error_for_card_input(payment)
  empty_fields = []
  message = ""

  if payment["Card Number"].size != 16
    message = "The card number must be 16 characters in length. "
  end

  payment.each { |str, field| empty_fields << str if field.empty? }
  if !empty_fields.empty?
    message << "#{empty_fields.join(", ")} field(s) cannot be empty."
  end

  message.empty? ? nil : message
end

post "/payments/create" do
  session[:payments] |= []
  session[:first_name] = params[:first_name].strip
  session[:last_name] = params[:last_name].strip
  session[:card_num] = params[:card_num].strip
  session[:exp_date] = params[:exp_date].strip
  session[:ccv] = params[:ccv].strip

  payment = { "First Name" => session[:first_name], 
              "Last Name" => session[:last_name], 
               "Card Number" => session[:card_num], 
               "Expiry Date" => session[:exp_date], 
               "CCV" => session[:ccv] }

  error = error_for_card_input(payment)

  if error
    session[:message] = error
    erb :checkout
  else
    payment["Time"] = Time.now
    session[:payments] << payment
    session[:message] = "Thank you for your payment"
    redirect "/payments"
  end

end

get "/payments" do
  erb :payments
end