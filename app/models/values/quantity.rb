module Values
  class Quantity
    include ActiveModel::Model

    attr_accessor :number

    validates :number, presence: true
    validates :number, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 99 }
    validate :hogehoge

    def initialize(number)
      @number = number
    end

    def to_i
      @number.to_i
    end

    def hogehoge
      # カスタムバリデーションを使える
    end
  end
end
