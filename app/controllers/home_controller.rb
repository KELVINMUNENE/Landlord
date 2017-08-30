class HomeController < ApplicationController
  def index
  	@complaints = Complaint.all
  	@emergencies = Emergency.all
  	@maintanances = Maintanance.all
  	@saccos =Sacco.all
  	@notifications =Notification.all
  	@comments =Comment.all
  end
end