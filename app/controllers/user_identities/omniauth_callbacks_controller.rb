#encoding: UTF-8
class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def all
    user_identity ||= UserIdentity.from_omniauth(request.env['omniauth.auth'])

    if user_identity.persisted?
      sign_in_and_redirect user_identity, notice: 'Logged in!'
    else
      session['devise.user_identity_attributes'] = user_identity.attributes
      redirect_to new_user_identity_url
    end
  end
  alias_method :facebook, :all
  alias_method :google, :all
end
