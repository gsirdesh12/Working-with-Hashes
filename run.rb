require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/states' do
  @states = Array.new
  state = {:id => "PA", :name => "Pennsylvania"}
  state2 = {:id => "CA", :name => "California"}
  state3 = {:id => "TX", :name => "Texas"}
  state4 = {:id => "IN", :name => "Indiana"}
  state5 = {:id => "NJ", :name => "New Jersey"}

  @states.push(state, state2, state3, state4, state5)

  @states.sort_by! do | state |
    state[:name]
  end
  # code!
  erb :states, layout: :main
end
