class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :attendances

    after_create :welcome_send



  def welcome_send
    # print "-"*10, "Avant email\n"
    UserMailer.welcome_email(self).deliver_now
    # print "-"*10, "Après email\n"
  end


  has_many :events, foreign_key: 'admin_id'#, class_name: 'Event'#, foreign_key: 'admin_id', class_name: 'User'
end
