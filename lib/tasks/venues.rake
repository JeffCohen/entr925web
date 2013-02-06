namespace :cspp do
  desc "Load sample venues"
  task :load_venues => :environment do
    venues = { "United Center" => "1901 W. Madison St, Chicago, IL",
     "Art Institute" => "Art Institute, Chicago, IL",
     "Millenium Park" => "Millenium Park, Chicago, IL",
     "1871" => "222 W. Merchandise Mart Plaza, Chicago, IL" }

    Venue.destroy_all
    venues.each do |venue_name, venue_address|
      Venue.create name: venue_name, address: venue_address
    end
  end
end
