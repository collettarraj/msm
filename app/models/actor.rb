class Actor < ApplicationRecord
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
