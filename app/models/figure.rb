class Figure <ActiveRecord::Base
  has_many :figuretitles
  has_many :titles, through: :figuretitles
  has_many :landmarks
end
