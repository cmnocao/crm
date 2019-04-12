class PhonesController < ApplicationController
  before_action :set_customer

  def new
    @phone = @customer.phones.new
  end

  def create
    @phone = @customer.phones.new(phone_params)
    if @phone.save
      redirect_to customer_phones_path, notice: 'Phone was successfully created.'
    else
      render :new
    end
  end

  private

    def set_customer
      @customer = Customer.find(params[:customer_id])
    end

    def phone_params
      params.require(:phone).permit(:number)
    end

end
