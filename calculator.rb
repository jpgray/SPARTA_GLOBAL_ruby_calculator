

puts("Basic, Advanced, BMI or Trip?")
$stdout.flush #
bas_adv = gets.chomp
puts bas_adv + " was chosen"

if bas_adv == "Basic"
  puts("Add, Subtract, Multiply or Divide?")
  $stdout.flush #
  bas_op = gets.chomp
  puts bas_op + " was chosen"

  puts("Enter your first number")
  $stdout.flush #
  bas_one = gets.chomp
  puts bas_one + " was chosen"

  puts("Enter your second number")
  $stdout.flush #
  bas_two = gets.chomp
  puts bas_two + " was chosen"

  if bas_op == "Add"
    puts bas_one.to_f + bas_two.to_f
  # end

  elsif bas_op == "Subtract"
    puts bas_one.to_f - bas_two.to_f
  # end

  elsif bas_op == "Multiply"
    puts bas_one.to_f * bas_two.to_f
  # end

  elsif bas_op == "Divide"
    puts bas_one.to_f / bas_two.to_f
  # end

  else
    puts "Something went wrong.. please try again!"
  # end
end

elsif bas_adv == "Advanced"
  puts("Squareroot or Square?")
  $stdout.flush #
  adv_op = gets.chomp
  puts adv_op + " was chosen"

  puts("Enter your number")
  $stdout.flush #
  adv_one = gets.chomp
  puts adv_one + " was chosen"

  if adv_op == "Squareroot"
    puts adv_one.to_f**0.5
  elsif adv_op == "Square"
    puts adv_one.to_f**2
  else
    puts "Something went wrong...please try again!"
  end
elsif bas_adv == "BMI"
  puts("Metric or Imperial?")
  $stdout.flush #
  bmi_op = gets.chomp
  puts bmi_op + " was chosen"

  if bmi_op == "Metric"

    puts("Please enter your height (meters)")
    $stdout.flush #
    met_height = gets.chomp
    puts met_height + " was chosen"

    puts("Please enter your weight (kilograms)")
    $stdout.flush #
    met_weight = gets.chomp
    puts met_weight + " was chosen"
    bmi_met = (met_weight.to_f/(met_height.to_f**2))
    # puts 70/1.75**2
    puts "Your BMI is... #{bmi_met}"

  elsif bmi_op == "Imperial"

    puts("Please enter your height (inches)")
    $stdout.flush #
    imp_height = gets.chomp
    puts imp_height + " was chosen"

    puts("Please enter your weight (pounds)")
    $stdout.flush #
    imp_weight = gets.chomp
    puts imp_weight + " was chosen"
    bmi_imp = 703*(imp_weight.to_f/(met_height.to_f**2))
    puts "Your BMI is... #{bmi_imp}"


  else
    puts "Something went wrong...please try again!"
  end

elsif bas_adv == "Trip"
  puts("Please enter the distance (miles)")
  $stdout.flush #
  trip_dist = gets.chomp
  puts trip_dist + " was chosen"

  puts("Please enter the fuel efficiency (mpg)")
  $stdout.flush #
  trip_mpg = gets.chomp
  puts trip_mpg + " was chosen"

  puts("Please enter the fuel cost (£ per gallon)")
  $stdout.flush #
  trip_cpg = gets.chomp
  puts trip_cpg + " was chosen"

  puts("Please enter the speed (mph)")
  $stdout.flush #
  trip_speed = gets.chomp
  puts trip_speed + " was chosen"

  # $stdout.flush #
  trip_time = trip_dist.to_f/trip_speed.to_f

  if trip_speed.to_f >= 61
    true_mpg = trip_mpg.to_f - (trip_speed.to_f.floor - 60)*2
    puts "#{true_mpg.to_f} true mpg"
    if trip_speed.to_f >= 61 + trip_mpg.to_f/2
      puts "Your car's fuel efficiency does not allow you to go this fast. Please drive slower!"
      true_mpg = 0
    end
  else
    true_mpg = trip_mpg.to_f
  end

  trip_fuel = trip_dist.to_f/true_mpg.to_f
  puts "#{true_mpg.to_f} true mpg"
  trip_cost = trip_fuel.to_f*trip_cpg.to_f

  puts "Your trip will take #{trip_time} hours and cost £#{trip_cost}"

else
  puts "Something went wrong... please try again!"
end
