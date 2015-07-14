# require 'factory_girl_rails'
# require 'faker'

class Generator
  
  def gen_products count = 1000
    Product.delete_all
    FactoryGirl.create_list :product, count
  end
  
  def gen_consumers count = 1000
  end
  
end