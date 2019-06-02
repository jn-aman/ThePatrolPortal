
if ActiveRecord::Base.connection.table_exists? 'volunteers'

 Volunteer.all.each do |vol|

			a = vol
			a.is_signed_in = false
			a.save
		
	 	end
	 end

if ActiveRecord::Base.connection.table_exists? 'checkins'
Checkin.delete_all
end

if ActiveRecord::Base.connection.table_exists? 'chats'
Chat.delete_all
end