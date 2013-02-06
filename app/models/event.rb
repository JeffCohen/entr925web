class Event < ActiveRecord::Base
  attr_accessible :happening_on, :venue_id, :title

  belongs_to :venue

  validates_presence_of :title

end
