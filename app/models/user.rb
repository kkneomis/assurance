class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  validates :name, :first_name, :last_name, presence: true

  
  has_many :p_informations, dependent: :destroy
  has_many :course_informations, dependent: :destroy
end
