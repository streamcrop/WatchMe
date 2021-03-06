module ApplicationHelper

  def flash_class(level)
      case level
          when 'notice' then "alert alert-info"
          when 'success' then "alert alert-success"
          when 'error' then "alert alert-warning"
          when 'alert' then "alert alert-danger"
          else "alert alert-info"
      end
  end
  
  def settings(sfor)
    if current_user
      current_user.settings(sfor)
    else
      Settings.send(sfor)
    end
  end

end