class Video < ActiveRecord::Base
  has_and_belongs_to_many :aulas, :include => :aulas_videos

end
