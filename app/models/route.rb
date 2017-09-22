class Route < ApplicationRecord
  validates :name, presence: :true
  has_and_belongs_to_many :railway_stations
  has_many :trains

  def start_station
    railway_stations.first
  end

  def end_station
    railway_stations.last
  end

end
