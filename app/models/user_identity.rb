class UserIdentity < ApplicationRecord
  belongs_to :user_account, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
    :registerable,
    :recoverable, 
    :rememberable, 
    :trackable, 
    :validatable,
    :omniauthable,
    :confirmable,
    :timeoutable

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_create! do |user_identity|
      user_identity.provider = auth.provider
      user_identity.uid = auth.uid
      user_identity.email = auth.info.email
    end
  end
end
