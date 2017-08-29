class HomeController < ApplicationController
  def index
  	@complaints = Complaint.all
  	@emergencies = Emergency.all
  	@maintanances = Maintanance.all
  	@saccos =Sacco.all
  	@notification =Notification.all
  end
end