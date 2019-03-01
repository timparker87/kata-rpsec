class User < ApplicationRecord

  attr_accessor :year_of_birth

  def age
    return nil if @year_of_birth == nil 
    Date.current.year - @year_of_birth.to_i
  end
end
