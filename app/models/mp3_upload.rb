class Mp3Upload
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip

  belongs_to :user
  has_mongoid_attached_file :mp3,
    path: ":attachment/:id",
    storage: :s3,
    s3_credentials: Rails.application.secrets.s3

  validates_attachment_content_type :mp3, content_type: ["audio/mpeg"]
end
