class Notice < ActiveRecord::Base
    require "date"
    
    def month
      Date::ABBR_MONTHNAMES[self.created_at.month]
    end
    
    def monthi
      self.created_at.month
    end
    
    def day
      self.created_at.day    
    end
end
