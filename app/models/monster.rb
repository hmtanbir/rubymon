class Monster < ActiveRecord::Base
  belongs_to :type
  belongs_to :team
  belongs_to :user
end
