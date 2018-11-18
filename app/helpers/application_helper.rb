module ApplicationHelper
  def flash_class(level)
    case level
    when 'notice' then "alert-info"
    when 'success' then "alert-success"
    when 'error' then "alert-danger"
    when 'alert' then "alert-warning"
    end
  end

  def is_owner?(user)
     user == current_user
  end
end