class ShoppingList < ActiveRecord::Base
  belongs_to :consumer
  serialize :list
end
