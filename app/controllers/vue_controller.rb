# typed: strict

class VueController < ActionController::Base
  extend T::Sig

  layout nil

  sig { void }
  def index
    respond_to do |format|
      format.html
      format.any { redirect_to root_path }
    end
  end
end
