class Nonprofit < ActiveRecord::Base
  # the user donates to many non profits therefore
  belongs_to :user
end