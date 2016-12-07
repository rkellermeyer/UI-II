module ApplicationHelper
  def render_errors(object)
    render partial: 'layouts/form_errors', locals: { object: object }
  end
end
