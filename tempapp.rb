puts "=========\nWelcome to my Temperature app. \nI'm going to ask you some stuff and then show you how I feel about the temp\n========="

puts "Please enter c if you'd like to see Celcius and f if you'd like to see farenheit"
user_pref = gets.chomp

if user_pref == "c"
	celcius_flag = true
else
	celcius_flag = false
end

puts "Please enter the temperature"
todays_temperature_u = gets.chomp.to_i

if celcius_flag == false
	todays_temperature = todays_temperature_u
	temp_flag = "F"
else
	todays_temperature = ((todays_temperature_u *1.8) +32).round.to_i
	temp_flag = "C"
end
response = "Hello the termperature is #{todays_temperature_u}°#{temp_flag} \nOur thoughts: "
print response
#if todays_temperature_f <0
#	puts "Really cold"
#elsif todays_temperature_f <15
#	puts "Cold"
#elsif todays_temperature_f <30
#	puts "Chilly"
#elsif todays_temperature_f <45
#	puts "Mildly cold"
#elsif todays_temperature_f <60
#	puts "Mild"
#elsif todays_temperature_f <75
#	puts "Pleasant"
#elsif todays_temperature_f <90
#	puts "Hot"
#else
#	puts "Get the hell out of the sun"
#end

case todays_temperature
when -100..0
	puts "Really cold"
when 1..29
	puts "Cold"
when 30..44
	puts "Chilly"
when 45..59
	puts "Mildly cold"
when 60..74
	puts "Mild"
when 75..89
	puts "Pleasant"
when 90..100
	puts "Hot"
else
	puts "Get the hell out of the sun"
end