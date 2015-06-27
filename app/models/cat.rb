class Cat < ActiveRecord::Base
  validates :name, presence: true

  validate :names_first_letter_is_capital

  def names_first_letter_is_capital
    return true if name.nil?

    first_letter = name.first

    unless first_letter == first_letter.capitalize
      errors.add :name, 'first letter must be capitalized'
    end
  end
end
