class User < ActiveRecord::Base
  after_create :send_welcome_email

  has_many :professionals, through: :events
  has_many :events

  has_one :professional
  has_many :reviews, as: :reviewable

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:facebook]

  validates_presence_of :name

  def self.find_for_facebook_oauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.name = "#{user.first_name} #{user.last_name}"
      user.picture = auth.info.image
      user.token = auth.credentials.token
      user.token_expiry = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

  private

  def send_welcome_email
    UserMailer.welcome_user(self).deliver_now
  end
end



