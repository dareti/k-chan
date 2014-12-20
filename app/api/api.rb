module API
  class Base < Grape::API
    format :json
    formatter :json, Grape::Formatter::Jbuilder

    get '/customer', jbuilder:'customer/index' do
      @customers = Customer.all
    end

    get '/history', jbuilder:'history/index' do
      @histories = History.all
    end

    get '/history/:id', jbuilder:'history/detail' do
      @history = History.find(params[:id])
    end
    # mount Customer_API
  end
end
