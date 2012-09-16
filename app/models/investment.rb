class Investment < ActiveRecord::Base
  validate :cost_should_be_positive
  def cost_should_be_positive
    if cost < 0
      errors.add :cost,'should be positive'
    end
end
end
