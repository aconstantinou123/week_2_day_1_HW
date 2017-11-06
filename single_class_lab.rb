class Student

  attr_reader :name, :cohort
  attr_writer :name, :cohort

  def initialize(input_name, input_cohort)
    @name = input_name
    @cohort = input_cohort
  end

  def name
    return @name
  end

  def cohort
    return @cohort
  end

end
