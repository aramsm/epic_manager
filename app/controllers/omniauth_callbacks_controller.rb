#encoding: UTF-8
class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def all
    @user_identity ||= UserIdentitie.from
  end
  alias_method :facebook, :all
end
