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

# class SportsTeam

#   attr_reader :team_name, :players
#   attr_accessor :coach

#   def initialize(team_name, players, coach)
#     @team_name = team_name
#     @players = players
#     @coach = coach
#     @points = 0
#   end

#   def add_new_player(new_player)
#     return @players.push(new_player)
#   end

#   def search_for_player(player)
#     return @players.include?(player)
#   end

#   def update_points(result)
#     if result == "win"
#       @points += 3
#       return @points
#     elsif reslut = "loss"
#       return @points
#     else
#       return "Error"
#     end
#   end

# end

#Extension

class Library

  def initialize(all_books)
    @all_books = all_books    
  end

  def list_all_books
    return @all_books
  end

  def find_book(book_to_find)
    for book in @all_books
      if book[:title] == book_to_find
        return book
      end
    end
    return "Not Found"
  end

  def find_book_rental_details(book_to_find)
    for book in @all_books
      if book[:title] == book_to_find
        return book[:rental_details]
      end
    end
    return "Not Found"
  end

  def add_book(book_to_add)
    new_book = { 
      title: book_to_add,
      rental_details: {
        student_name: "",
        date: ""
        }
      }
    @all_books.push(new_book)
    return @all_books
  end

  def change_rental_details(book_to_change, new_name, new_date)
    for book in @all_books
      if book[:title] == book_to_change
        book[:rental_details][:student_name] = new_name
        book[:rental_details][:date] = new_date
        return book[:rental_details]
      end
    end
    return "Not Found"

  end

end