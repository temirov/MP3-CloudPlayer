class Mp3Upload
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip

  belongs_to :user
  has_mongoid_attached_file :mp3,
    path: ":attachment/:id",
    storage: :s3,
    s3_credentials: File.join(Rails.root, 'config', 'amazon.yml')

  validates_attachment_content_type :mp3, content_type: ["audio/mpeg"]
end
