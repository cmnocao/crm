class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  def index
    @customers = Customer.all.paginate(page: params[:page], per_page: 7)
  end

  def show
    @customer_addresses = @customer.addresses
    @customer_orders = @customer.orders
  end

  def new
    @customer = Customer.new
    @customer.addresses.new
    @customer.phones.new
  end

  def edit
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      redirect_to @customer, notice: 'Customer was successfully created.'
    else
      render :new
    end
  end

  def update
    if @customer.update(customer_params)
      redirect_to @customer, notice: 'Customer was successfully updated.'
    else
      render :edit
    end
  end

  private
    def set_customer
      @customer = Customer.find(params[:id])
    end

    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :email, :customer_comment,
                                      addresses_attributes:[:id, :line_1, :city, :country, :postcode, :address_type, :latitude, :longitude],
                                      phones_attributes:[:id, :number])
    end
end
