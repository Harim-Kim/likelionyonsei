class Post < ActiveRecord::Base
    require "date"
    belongs_to :user
    has_many :replies
    
    # mount_uploader :img_url, YonseiUploader
    
    
    def name
      User.find(self.user_id).name
    end
    
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
