class Cms::SuppliersController < Shoestrap::BaseController

  def index
    @suppliers = Supplier.ordered
  end
end
