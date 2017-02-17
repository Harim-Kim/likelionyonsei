class Assignment < ActiveRecord::Base
    belongs_to :assign
    
    def name
        User.find(self.user_id).name
    end
    
    def self.check
        take.nil?
    end
    
    def assign_name
       Assign.find(self.assign_id).title 
    end
end
