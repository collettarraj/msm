class Actor < ApplicationRecord
  mount_base64_uploader :image, ImageUploader

  # Direct associations

  has_many   :characters,
             :dependent => :destroy

  # Indirect associations

  has_many   :filmography,
             :through => :characters,
             :source => :movie

  # Validations

  # Scopes

  def to_s
    name
  end

end
