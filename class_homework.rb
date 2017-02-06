class CodeClanStudent

  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort
  end

  def student_name
    return @student_name
  end 

  def cohort
    return @cohort
  end

  def set_name(new_name)
    @student_name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

end