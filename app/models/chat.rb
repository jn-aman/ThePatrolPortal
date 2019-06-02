class Chat < ActiveRecord::Base
after_create :notify_pusher, on: :create

      def notify_pusher
        Pusher.trigger('chat', 'new', self.as_json)
      end


end
