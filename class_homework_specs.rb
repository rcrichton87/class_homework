require ('minitest/autorun')
require_relative('./class_homework')

#Part A

# class TestCodeClanStudent < MiniTest::Test

#   def test_student_name
#     student = CodeClanStudent.new("Ross", "Cohort 10")
#     assert_equal("Ross", student.student_name)
#   end

#   def test_cohort
#     student = CodeClanStudent.new("Ross", "Cohort 10")
#     assert_equal("Cohort 10", student.cohort)
#   end

#   def test_set_name
#     student = CodeClanStudent.new("Ross", "Cohort 10")
#     student.set_name("David")
#     assert_equal("David", student.student_name)
#   end

#   def test_set_cohort
#     student = CodeClanStudent.new("Ross", "Cohort 10")
#     student.set_cohort("Cohort 8")
#     assert_equal("Cohort 8", student.cohort)
#   end

#   def test_talk
#     student = CodeClanStudent.new("Ross", "Cohort 10")
#     assert_equal("I can talk!", student.talk)
#   end

#   def test_favourite_language
#     student = CodeClanStudent.new("Ross", "Cohort 10")
#     assert_equal("I love Ruby", student.favourite_language("Ruby"))
#   end

# end

#Part B

class TestSportsTeam < MiniTest::Test

  def test_team_name
    team = SportsTeam.new("Handegg Handlers", ["Hack Enslash", "Mad Donna"], "Amanda Hugandkiss")
    assert_equal("Handegg Handlers", team.team_name)
  end

  def test_players
    team = SportsTeam.new("Handegg Handlers", ["Hack Enslash", "Mad Donna"], "Amanda Hugandkiss")
    assert_equal(["Hack Enslash", "Mad Donna"], team.players)
  end

  def test_coach
    team = SportsTeam.new("Handegg Handlers", ["Hack Enslash", "Mad Donna"], "Amanda Hugandkiss")
    assert_equal("Amanda Hugandkiss", team.coach)
  end

  def test_update_coach
    team = SportsTeam.new("Handegg Handlers", ["Hack Enslash", "Mad Donna"], "Amanda Hugandkiss")
    team.coach = "Miss Fortune"
    assert_equal("Miss Fortune", team.coach)
  end

  def test_add_new_player
    team = SportsTeam.new("Handegg Handlers", ["Hack Enslash", "Mad Donna"], "Amanda Hugandkiss")
    team.add_new_player("Miss Fortune")
    assert_equal(["Hack Enslash", "Mad Donna", "Miss Fortune"], team.players)
  end

  def test_search_for_player
    team = SportsTeam.new("Handegg Handlers", ["Hack Enslash", "Mad Donna"], "Amanda Hugandkiss")
    assert_equal(true, team.search_for_player("Hack Enslash"))
  end

end



