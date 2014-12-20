class Contain < ActiveRecord::Base
  belongs_to :song
  belongs_to :album
  validates :song, :album, :presence => true
end
