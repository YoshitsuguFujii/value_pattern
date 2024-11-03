module Serializers
  class QuantitySerializer
    # Rubyオブジェクトを変換
    def self.dump(quantity)
      if quantity.is_a?(Hash)
        Values::Quantity.new(quantity[:number])
      else
        quantity
      end.to_i
    end

    # Rubyオブジェクトに変換
    def self.load(quantity)
      Values::Quantity.new(quantity)
    end
  end
end
