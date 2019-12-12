class PagesController < ApplicationController
skip_before_action :authenticate_user!, only: [:home]

  def home
    @plots = policy_scope(Plot).order(created_at: :asc)
  end

end
