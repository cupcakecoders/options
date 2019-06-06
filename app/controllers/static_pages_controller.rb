class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard, :home, :faqs]

  def home
  end

  def faqs
  end

  def dashboard
  end

end
