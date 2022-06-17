class User < ApplicationRecord
    validates :name, presence: true
    validates :name, format: { with: /\A[a-zA-Z]+\z/ }
    validates :age, presence: true
    validates :age, numericality: { only_integer: true , greater_than: 0, less_than: 100}
    validates :gender, presence: true
end
