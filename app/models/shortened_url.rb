class ShortenedUrl < ApplicationRecord
  validates :short_url, presence: true, uniqueness: { case_sensitive: false }

  def random_code 
    SecureRandom.base64 16
  end
end