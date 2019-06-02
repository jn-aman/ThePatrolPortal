class VolunteersController < ApplicationController
 before_action :authenticate_volunteer!, only: [:online]
 

def test
      render layout: false

  
end

def typed
end
def hel
    render layout: false
  end


 def index
    render layout: false
  end


  def index1
    @volunteers = Volunteer.all
    @pol=Volunteer.unique_policestations
    @name=Volunteer.unique_name
    @cat=Volunteer.unique_cat
    @loc=Crime.unique_loc
  end

def sp
 @v=Volunteer.where("police_station = ?", params[:police_station])
v=Volunteer.where("police_station = ?", params[:police_station])
end
def nam
@v=Volunteer.where("name = ?", params[:name])
end
def cat
@v=Volunteer.where("category = ?", params[:category])
end
def py
render layout: false
end
def online
  @users = Volunteer.all
end

def online1
  @users = Volunteer.all
end
def slider
    render layout: false

end
  def loc
    @map=Trip.latlng
  end

end
