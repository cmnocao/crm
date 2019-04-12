class WelcomeController < ApplicationController
before_action :force_json, only: :search

def  index
end

def search
  @customers = Customer.ransack(first_name_cont: params[:q]).result(distinct: true).limit(5)
  @addresses = Address.ransack(postcode_cont: params[:q]).result(distinct: true).limit(5)
  @phones = Phone.ransack(number_cont: params[:q]).result(distinct: true).limit(5)
end

private

  def force_json
    request.format = :json
  end

end
