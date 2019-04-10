class PhonesController < ApplicationController
  before_action :set_phone, only: [:show, :edit, :update, :destroy]
  before_action :set_customer

  def index
    @phones = Phone.all
  end

  def show
  end

  def new
    @phone = @customer.phones.new
  end

  def edit
  end

  def create
    @phone = @customer.phones.new(phone_params)
    if @phone.save
      redirect_to customer_phones_path, notice: 'Phone was successfully created.'
    else
      render :new
    end
  end

  def update
    if @phone.update(phone_params)
      fedirect_to customer_phones_path, notice: 'Phone was successfully updated.'
    else
      render :edit
    end
  end

  private
    def set_phone
      @phone = Phone.find(params[:id])
    end

    def set_customer
      @customer = Customer.find(params[:customer_id])
    end

    def phone_params
      params.require(:phone).permit(:number)
    end
end
