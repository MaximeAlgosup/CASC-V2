class Documentation < ApplicationRecord

    belongs_to :challenge

    validates :title, presence: true
    validates :challenge_id, presence: true

    # Save the uploaded file to the /public/uploads directory and return its relative path
    def self.save_file(uploaded_file)
        target_dir = Rails.root.join('public', 'uploads', 'documents')
        FileUtils.mkdir_p(target_dir) # Create the directory if it doesn't exist

        # Generate a unique filename
        new_file_name = "#{SecureRandom.uuid}-#{uploaded_file.original_filename}"
        new_file_path = target_dir.join(new_file_name)

        # Move the file
        File.open(new_file_path, 'wb') do |file|
        file.write(uploaded_file.read)
        end

        # Return the relative path to store in the database
        "/uploads/documents/#{new_file_name}"
    end
end