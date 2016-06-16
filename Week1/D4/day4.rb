# class Vehicle
#   attr_reader :wheels, :noise
#   def initialize(wheels,noise)
#     @wheels = wheels
#     @noise = noise
#   end
#   def make_noise
#     puts @noise
#   end
# end
# class VehicleHandler
#   def initialize(array)
#     @array = array
#   end
#   def count_wheels
#     total_wheels = @array.reduce(0) do |sum, vehicle|
#       sum += vehicle.wheels
#     end
#   end
#   def make_noises
#     @array.each do |vehicle|
#       vehicle.make_noise
#     end
#   end
# end
# car = Vehicle.new(4,"BRUUUUUMMM")
# motorbike = Vehicle.new(2,"VUUM VUUM")
# bicycle = Vehicle.new(2,"Ring Ring!")
# vehicles_array = [car, motorbike, bicycle]
# handler = VehicleHandler.new(vehicles_array)
# puts handler.count_wheels
# handler.make_noises

class Login

  def initialize(user,password)
    @users = {
      :user => "albz",
      :password => "letmein!"
    }
    @user = user
    @password = password
  end

  def validate_login
    return true if @user = @users[:user] && @password == @users[:password]
  end

end


class AI

  def self.powerful_algorithm
    puts "Ask me anything you want. ANYTHING!"
    input_string = gets.chomp
    puts "Ok, the answer is:"
    puts input_string.size
  end

end

puts "Username:"
user = gets.chomp
puts "Password:"
password = gets.chomp

Login.new(user,password).validate_login == true ? AI.powerful_algorithm : puts("Incorrect!")
