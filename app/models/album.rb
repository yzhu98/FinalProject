class Album < ActiveRecord::Base
  belongs_to :singer
  has_many :songs, :through => :contain
  validates :title, :language, :presence => true
end
