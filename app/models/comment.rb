class Comment < ActiveRecord::Base
  belongs_to :jam
  belongs_to :user
end
