class OrdersController < ApplicationController
  before_action :set_order, only: [:edit, :update]
  before_action :set_customer

  def index
    @orders = Order.all
  end

  def show
  end

  def new
    @order = @customer.orders.new
  end

  def edit
  end

  def create
    @order = @customer.orders.new(order_params)

      if @order.save
        redirect_to customer_path(@customer), notice: 'Order was successfully created.'
      else
        render :new
      end
  end

  def update
    if @customer.order.update(order_params)
      redirect_to customer_path(@customer), notice: 'Order was successfully updated.'
    else
      render :edit
    end
  end

  private
    def set_customer
      @customer = Customer.find(params[:customer_id])
    end

    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:item, :total, :postage_method, :invoice, :comment)
    end
end
