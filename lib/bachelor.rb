def get_first_name_of_season_winner(data, season)
  # code here
  winner = ""
  data[season].each do |x|
    if x["status"] == "Winner"
      winner = x["name"].split.first
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  # code here
  name = ""
  data.each do |season, stat|
    stat.each do |x|
      if occupation == x["occupation"]
        name = x["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, stat|
    stat.each do |x|
      if x["hometown"] == hometown
        count +=1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  job = ""
  data.each do |season, stat|
    stat.each do |x|
      if x["hometown"] == hometown
        return x["occupation"]
      end
    end
  end

end

def get_average_age_for_season(data, season)
  # code here
age = 0
data[season].each do |x|
  age += x["age"].to_f
end
(age/data[season].length).round
end
