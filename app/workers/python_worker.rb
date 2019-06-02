class PythonWorker
  include Sidekiq::Worker
  sidekiq_options retry:false
  def perform
	Volunteer.pyth

  end
end
