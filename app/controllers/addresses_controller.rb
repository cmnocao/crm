class AddressesController < ApplicationController

  before_action :set_address, only: [:edit, :update]
  before_action :set_customer

  def new
    @address = @customer.addresses.new
  end

  def edit

  end

  def create
    @address = @customer.addresses.new(address_params)

    if @address.save
      redirect_to customer_path(@customer), notice: 'Address was successfully created.'
    else
      render :new
    end
  end

  def update
    if @address.update(address_params)
      redirect_to customer_path(@customer), notice: 'Address was successfully updated.'
    else
      render :edit
    end
  end


  private
    def set_address
      @address = Address.find(params[:id])
    end

    def set_customer
      @customer = Customer.find(params[:customer_id])
    end

    def address_params
      params.require(:address).permit(:line_1, :line_2, :line_3, :city, :country, :address_type, :postcode, :address_comment)
    end
end
