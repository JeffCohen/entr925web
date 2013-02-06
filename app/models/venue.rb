require 'open-uri'

class Venue < ActiveRecord::Base
  attr_accessible :address, :name

  has_many :events

  validates_presence_of :name

  def geolocation
    return @geolocation if @geolocation

    google_address = self.address || self.name
    uri = URI.escape("http://maps.googleapis.com/maps/api/geocode/json?language=en&address=#{google_address}&sensor=false")

    begin
      geodata = JSON.parse(open(uri).read)
      @geolocation = geodata["results"].first["geometry"]["location"]
    rescue => e
      logger.info "Exception caught:"
      logger.info e.message
    end

    return @geolocation
  end

  def latitude
    geolocation["lat"] rescue nil
  end

  def longitude
    geolocation["lng"] rescue nil
  end
end
