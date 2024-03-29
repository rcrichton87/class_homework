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

# class TestSportsTeam < MiniTest::Test

#   def test_team_name
#     team = SportsTeam.new("Handegg Handlers", ["Hack Enslash", "Mad Donna"], "Amanda Hugandkiss")
#     assert_equal("Handegg Handlers", team.team_name)
#   end

#   def test_players
#     team = SportsTeam.new("Handegg Handlers", ["Hack Enslash", "Mad Donna"], "Amanda Hugandkiss")
#     assert_equal(["Hack Enslash", "Mad Donna"], team.players)
#   end

#   def test_coach
#     team = SportsTeam.new("Handegg Handlers", ["Hack Enslash", "Mad Donna"], "Amanda Hugandkiss")
#     assert_equal("Amanda Hugandkiss", team.coach)
#   end

#   def test_update_coach
#     team = SportsTeam.new("Handegg Handlers", ["Hack Enslash", "Mad Donna"], "Amanda Hugandkiss")
#     team.coach = "Miss Fortune"
#     assert_equal("Miss Fortune", team.coach)
#   end

#   def test_add_new_player
#     team = SportsTeam.new("Handegg Handlers", ["Hack Enslash", "Mad Donna"], "Amanda Hugandkiss")
#     team.add_new_player("Miss Fortune")
#     assert_equal(["Hack Enslash", "Mad Donna", "Miss Fortune"], team.players)
#   end

#   def test_search_for_player
#     team = SportsTeam.new("Handegg Handlers", ["Hack Enslash", "Mad Donna"], "Amanda Hugandkiss")
#     assert_equal(true, team.search_for_player("Hack Enslash"))
#   end

#   def test_update_points
#     team = SportsTeam.new("Handegg Handlers", ["Hack Enslash", "Mad Donna"], "Amanda Hugandkiss")
#     assert_equal(3, team.update_points("win"))
#   end

# end

#Extension

class TestLibrary < MiniTest::Test

  def test_list_all_books
    library = Library.new ( 
      [
        { 
          title: "lord_of_the_rings",
          rental_details: { 
           student_name: "Jeff", 
           date: "01/12/16"
          }
        },
        {
          title: "the_gunslinger",
          rental_details: {
            student_name: "Ross",
            date: "07/02/17"
          }
        }
      ]
    )

    expected = [
        { 
          title: "lord_of_the_rings",
          rental_details: { 
           student_name: "Jeff", 
           date: "01/12/16"
          }
        },
        {
          title: "the_gunslinger",
          rental_details: {
            student_name: "Ross",
            date: "07/02/17"
          }
        }
      ]

    actual = library.list_all_books

    assert_equal(expected, actual)

  end

  def test_find_book
    library = Library.new ( 
      [
        { 
          title: "lord_of_the_rings",
          rental_details: { 
           student_name: "Jeff", 
           date: "01/12/16"
          }
        },
        {
          title: "the_gunslinger",
          rental_details: {
            student_name: "Ross",
            date: "07/02/17"
          }
        }
      ]
    )

    expected = {
      title: "the_gunslinger",
      rental_details: {
        student_name: "Ross",
        date: "07/02/17"
      }
    }
    actual = library.find_book("the_gunslinger")

    assert_equal(expected, actual)

  end 


  def test_find_book_rental_details
    library = Library.new ( 
      [
        { 
          title: "lord_of_the_rings",
          rental_details: { 
           student_name: "Jeff", 
           date: "01/12/16"
          }
        },
        {
          title: "the_gunslinger",
          rental_details: {
            student_name: "Ross",
            date: "07/02/17"
          }
        }
      ]
    )

    expected = {
      student_name: "Ross",
      date: "07/02/17"
    }
    actual = library.find_book_rental_details("the_gunslinger")
    assert_equal(expected, actual)
  end

  def test_add_book
    library = Library.new ( 
      [
        { 
          title: "lord_of_the_rings",
          rental_details: { 
           student_name: "Jeff", 
           date: "01/12/16"
          }
        },
        {
          title: "the_gunslinger",
          rental_details: {
            student_name: "Ross",
            date: "07/02/17"
          }
        }
      ]
    )

    expected = [
        { 
          title: "lord_of_the_rings",
          rental_details: { 
           student_name: "Jeff", 
           date: "01/12/16"
          }
        },
        {
          title: "the_gunslinger",
          rental_details: {
            student_name: "Ross",
            date: "07/02/17"
          }
        },
        {
          title: "orcs!",
          rental_details: {
            student_name: "",
            date: ""
          }
        }
      ]
    actual = library.add_book("orcs!")

    assert_equal(expected, actual)
  end

  def test_change_rental_details
    library = Library.new ( 
      [
        { 
          title: "lord_of_the_rings",
          rental_details: { 
           student_name: "Jeff", 
           date: "01/12/16"
          }
        },
        {
          title: "the_gunslinger",
          rental_details: {
            student_name: "Ross",
            date: "07/02/17"
          }
        }
      ]
    )

    expected = {
      student_name: "David",
      date: "11/04/17"
    }

    actual = library.change_rental_details("the_gunslinger", "David", "11/04/17")

    assert_equal(expected, actual)
  end

end
