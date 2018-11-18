module RequestsHelper
  def convert_state(state)
    case state
    when 0 then 'bg-warning'
    when 1 then 'bg-danger'
    when 2 then 'bg-success'
    end
  end
end
