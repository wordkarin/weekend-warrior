def leap_year?(year)
  if year%4 == 0 #leap years are every year that is evenly divisible by 4
    if year%100 == 0 #except every year that is evenly divisible by 100
      if year%400 == 0 #unless the year is also evenly divisible by 400
        return true
      else
        return false
      end
    else
      return true
    end
  else
    return false
  end
end
