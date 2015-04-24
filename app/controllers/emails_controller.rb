class EmailsController < ApplicationController
  def create
    query = params.permit :from, :subject
    @email = Email.new(query)
    if @email.save
      RandomFactMailer.send_random_fact_email(@email).deliver
      render json: {
        message:'Sucess'
      }, status: 200
    else
      render json: {
        message: :error,
        error: 'Invalid Parameters'
      }, status: 404
    end
  end
end
