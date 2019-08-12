  class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable
    has_many :orders

    #give perms to write on login params
    attr_acessor :login

    # validates username without being case case_sensitive
    validates :username, presence: :true, uniqueness: {case_sentive: false}
    # only allow, letter, number, underscore and punctuation.

    # send email after sign up
    after_create :send_email_signup

    def send_email_signup
      UserMailer.register_info(self).deliver_now
end

def login
  #accepts 'login' as username or email.
  # whatever it gets as input
  @login || self.username || self.send_email_signup
end
