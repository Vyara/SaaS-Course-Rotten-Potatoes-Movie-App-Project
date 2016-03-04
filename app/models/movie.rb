class Movie < ActiveRecord::Base
  def self.check(ratings)
   if ratings
     where('rating IN (?)', ratings)
   else
     self.all
   end
  end
end

