class Volunteer < ActiveRecord::Base




 validates :username, presence: :true, uniqueness: { case_sensitive: false } # add this line
      validates :is_signed_in, inclusion: [true, false] # add this line

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         # ,:confirmable
	
	after_create :notify_pusher # add this line





	
	def self.import
	
	xlsx = Roo::Spreadsheet.open(File.join('public', 'volunteers.xlsx'))
		counter = 1
		xlsx.sheet('Form Responses').each(name: 'Name', police_station: 'Police Station', n_police_chowki: 'Nearest Police Chowki', mobile_no: 'Mobile Number', category: 'Category', email_id: 'Email Address') do |hash|
			new_password = 'Volunteer_' + counter.to_s

        	new_vol = Volunteer.create(name: hash[:name].to_s, police_station: hash[:police_station].to_s, nearest_police_chowki: hash[:n_police_chowki].to_s, mobile_number: hash[:mobile_no].to_s, category: hash[:category].to_s, email: hash[:email_id], password: new_password)
		
        	counter += 1
		
		end

	end

	# def self.usern
	# 	counter=1;
	# 	Volunteer.all.each do |vol|

	# 		a = vol
	# 		a.username = 'user'+counter.to_s
	# 		a.save
	# 	counter=counter+1
	# 	end

	# end

		def self.sign_update
		
		Volunteer.all.each do |vol|

			a = vol
			a.is_signed_in = false
			a.save
		
		end

	end


def self.unique_policestations
		stations = []
		Volunteer.all.each do |vol|
			stations.push(vol.police_station.titleize)
		end
		stations.delete("")
		return stations.uniq
	end

def self.unique_name
		n = []
		Volunteer.all.each do |vol|
			n.push(vol.name.titleize)
		end
		n.delete("")
		return n.uniq
	end


def self.unique_cat
		n = []
		Volunteer.all.each do |vol|
			n.push(vol.category.titleize)
		end
		n.delete("")
		return n.uniq
	end


def self.pyth
 x= `python demo.py --image_dir #{(Rails.root).to_s}/public/uploads/crime/image/#{(Crime.last.id).to_s}`
				# x= `python demo.py --image_dir /public/uploads/crime/image/#{(Crime.last.id).to_s}`

			a=Crime.last
			a.Age=x.split(",").first 
			a.Gender=x.split(",").last
			a.save
		
		
	end




      def notify_pusher # add this method
        Pusher.trigger('activity', 'login', self.as_json)
      end

      def as_json(options={}) # add this method
        super(
          only: [:id,:username,:name, :police_station, :nearest_police_chowki, :mobile_number, :category, :email]
        )
      end
# <a href="#" class="tm-bordered-btn" onclick="window.location.href = '/volunteers/sp/'+$( '#contact_name' ).val()">Show</a>


end

