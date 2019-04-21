# Complete the function which returns the weekday according to the input number:

# 1 returns "Sunday"
# 2 returns "Monday"
# 3 returns "Tuesday"
# 4 returns "Wednesday"
# 5 returns "Thursday"
# 6 returns "Friday"
# 7 returns "Saturday"
# Otherwise returns "Wrong, please enter a number between 1 and 7"

def weekday_returner (input)
    if input == 1
        return "Sunday"
    elsif input == 2
        return "Monday"
    elsif input == 3
        return "Tuesday"
    elsif input == 4
        return "Wednesday"
    elsif input == 5
        return "Thursday"
    elsif input == 6 
        return "Friday"
    elsif input == 7
        return "Saturday"
    else 
        puts "Wrong, please enter a number between 1 and 7"
    end
end
puts weekday_returner(5)

def what_day?(n)
    case n
     when 1 then "Sunday"
     when 2 then "Monday"
     when 3 then "Tuesday"
     when 4 then "Wednesday"
     when 5 then "Thursday"
     when 6 then "Friday"
     when 7 then "Saturday"
     else "Wrong, please enter a number between 1 and 7"
     end
   end