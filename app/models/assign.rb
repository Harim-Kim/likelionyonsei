class Assign < ActiveRecord::Base
    has_many :assignments
    
    require "date"
    
    def month
      Date::ABBR_MONTHNAMES[self.created_at.month]
    end
    
    def day
      self.created_at.day    
    end
end
