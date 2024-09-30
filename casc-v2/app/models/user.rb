class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_news, :class_name => "UserNew", dependent: :destroy
  has_many :user_challenges, dependent: :destroy
  has_many :casc_news

  # Check that pPicturePath end with a valid image extension
  validates :pPicturePath, format: { with: /\A.*\.(jpg|jpeg|png|gif)\z/, message: "must be a valid image file" }

  def self.move_and_save_image(uploaded_file)
    # Define a target directory
    target_dir = Rails.root.join('public', 'uploads')

    # Ensure the directory exists
    FileUtils.mkdir_p(target_dir)

    # Create a new unique file name
    new_file_name = "#{SecureRandom.uuid}-#{uploaded_file.original_filename}"

    # Define the new file path
    new_file_path = target_dir.join(new_file_name)

    # Move the uploaded file to the new file path
    File.open(new_file_path, 'wb') do |file|
      file.write(uploaded_file.read)
    end

    # Return the relative path (to be saved in the database)
    File.join('/uploads', new_file_name)
  end

end

