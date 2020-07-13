class Product < ActiveRecord::Base
  has_many :store_products
  has_many :stores, through: :store_products


  def find
    Store.find(self.store_id)
  end
end


# Model.new
# Model instance.save
# Model instance.create
# Model.all
# Model.first
# Model.find(instance)
# Model.find_by(name: "half foods")
#
# half_foods.build()
