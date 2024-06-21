# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program



def find(id)

  @candidates.find { |candidate| candidate[:id] == id }

  end
  

  def experienced?(candidate)

    candidate[:years_of_experience] >= 2

  end

  def github(candidate)

    candidate[:github_points] >= 100

  end

  def language(candidate)

    candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')

  end

  def date(candidate)

    candidate[:date_applied] >= 15.days.ago.to_date

  end

  def age(candidate)

    candidate[:age] > 17

  end


  def qualified_candidates(candidates)

    candidates.select do |candidate|
      experienced?(candidate) &&
      github(candidate) &&
      language(candidate) &&
      date(candidate) &&
      age(candidate)
    end

  end
  
  # More methods will go below

  def ordered_by_qualifications(candidates)

    candidates.sort_by { |candidate| [-candidate[:years_of_experience], -candidate[:github_points]]}

  end
 

