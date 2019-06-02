class StatsController < ApplicationController
  def index
        @loc=Crime.unique_loc

  end
def graphs
	
  @c=Crime.where("Locality = ?", params[:locality])
  end



  def graphsgen
  	sql = "SELECT SUM(CASE WHEN age < '18' THEN 1 ELSE 0 END) AS 'Under 18',
        SUM(CASE WHEN age BETWEEN '18' AND '30' THEN 1 ELSE 0 END) AS '[18-30]',
        SUM(CASE WHEN age BETWEEN '30' AND '70' THEN 1 ELSE 0 END) AS '[30-70]'
 FROM crimes"
@records_array = ActiveRecord::Base.connection.execute(sql)
  end
end
