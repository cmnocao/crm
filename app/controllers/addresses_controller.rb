class AddressesController < ApplicationController
  before_action :set_address, only: [:show, :edit, :update]
  before_action :set_customer

  def index
    @addresses = Address.all
    @customer_addresses = @customer.addresses
  end

  def show
  end

  def new
    @address = @customer.addresses.new
  end

  def edit
  end

  def create
    @address = @customer.addresses.new(address_params)

    if @address.save
      redirect_to customer_addresses_path, notice: 'Address was successfully created.'
    else
      render :new
    end
  end

  def update
    if @address.update(address_params)
      redirect_to customer_addresses_path, notice: 'Address was successfully updated.'
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
      params.require(:address).permit(:line_1, :city, :country, :address_type, :postcode)
    end
end
