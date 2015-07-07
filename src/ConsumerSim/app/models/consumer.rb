class Consumer < ActiveRecord::Base
  has_one :shopping_list, autosave: true
end
