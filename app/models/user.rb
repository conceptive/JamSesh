class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]

  attr_accessor :login

  validates_uniqueness_of :username
  validates_presence_of :username
  validates :username, length: { in: 4..20 }

  has_attached_file :avatar, styles: { medium: "250x250#", thumb: "100x100#" },
                    default_url: "/images/:style/missing.png",
                    :url  => ":s3_domain_url",
                    :path => "public/avatars/:id/:style_:basename.:extension",
                    :storage => :fog,
                    :fog_credentials => {
                        provider: 'AWS',
                        aws_access_key_id: ENV["AWS_ACCESS_KEY_ID"],
                        aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"]
                    },
                    fog_directory: ENV["FOG_DIRECTORY"]

  validates_attachment_content_type :avatar, :content_type => ['image/gif', 'image/jpeg', 'image/png', 'image/x-ms-bmp']

	def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions).first
    end
  end

  acts_as_followable
  acts_as_follower

  has_many :jams
  has_many :comments
  belongs_to :jam_skill

end
