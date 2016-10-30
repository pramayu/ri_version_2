class AdminsController < ApplicationController

  before_action :signed_in_user
  layout "admin"

  def dashboard
    @events = Event.all.order('created_at desc').limit(10)
    @tests = Testimonial.all.order('created_at desc').limit(6)
    @sliders = Slider.all.order('created_at desc')
  end
end
