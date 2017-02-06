#Part A

# class CodeClanStudent

#   def initialize(student_name, cohort)
#     @student_name = student_name
#     @cohort = cohort
#   end

#   def student_name
#     return @student_name
#   end 

#   def cohort
#     return @cohort
#   end

#   def set_name(new_name)
#     @student_name = new_name
#   end

#   def set_cohort(new_cohort)
#     @cohort = new_cohort
#   end

#   def talk
#     return "I can talk!"
#   end

#   def favourite_language(language)
#     return "I love #{language}"
#   end

# end

#Part B

class SportsTeam

  attr_reader :team_name, :players
  attr_accessor :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end

  def add_new_player(new_player)
    return @players.push(new_player)
  end

end