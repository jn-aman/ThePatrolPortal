class Trip < ActiveRecord::Base
before_create :set_uuid
      has_many :checkins # trip model's association with the checkins model

      # a method that creates a random uuid for each trip before its created
      def set_uuid
        self.uuid = SecureRandom.uuid
      end

      # a method that generates a custom JSON output for our trip objects
      def as_json(options={})
        super(
          only: [:id, :name, :uuid],
          include: { checkins: { only: [:lat, :lng, :trip_id] } }
        )
      end

      def self.latlng
  
    sql = "SELECT distinct name ,lat,lng
 FROM checkins , trips
 WHERE trips.id=checkins.trip_id and  checkins.id IN (SELECT MAX(checkins.id) FROM checkins GROUP BY (trip_id))"
records_array = ActiveRecord::Base.connection.execute(sql)


  
    return records_array
  end

end
