class Reply < ActiveRecord::Base
    belongs_to :user
    belongs_to :post
    
    def name
        User.find(self.user_id).name
    end
end
