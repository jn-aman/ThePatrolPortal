class Checkin < ActiveRecord::Base
  belongs_to :trip

after_create :notify_pusher

      # method to publish a user's current location
      def notify_pusher
        Pusher.trigger('location', 'new', self.trip.as_json)
      end
  
end
