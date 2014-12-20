class Song < ActiveRecord::Base
  belongs_to :company
  has_many :albums, :through => :contain
  validates :title, :duration, :presence => true
end
