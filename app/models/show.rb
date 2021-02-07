class Show < ActiveRecord::Base
  has_many :characters 
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    # binding.pry 
    self.actors.collect { |s|"#{s.first_name} #{s.last_name}" }
  end 

  def genre
    binding.pry

  end 
end 