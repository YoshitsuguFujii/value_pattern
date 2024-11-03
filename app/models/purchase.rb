class Purchase < ApplicationRecord
  serialize :quantity, coder: Serializers::QuantitySerializer

  validate :validate_quantity

  def validate_quantity
    return if self.quantity.valid?

    errors.add(:base, "数量にエラーがあります")
  end
end
