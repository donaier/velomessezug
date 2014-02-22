class Cms::ActivitiesController < Shoestrap::BaseController

  def index
    @activities = Activity.ordered
  end
end
