class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private

  def record_not_found(exception)
    render status: 404, template: "errors/404", locals: {model: exception.model}
  end
end
