class Company < ActiveRecord::Base
  has_many :investments
  validate :symbol_should_be_less_than_3_chars
  def symbol_should_be_less_than_3_chars
    if symbol.length > 4
      errors.add :symbol,'should be less than 4 chars'
    end
  end
end
