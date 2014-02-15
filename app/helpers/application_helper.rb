module ApplicationHelper

  def body_class
    "controller-#{controller_name} action-#{action_name}"
  end
end
