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

    get '/history/:id', jbuilder:'history/index' do
      @histories = History.where(customer_id: params[:id])
    end

    get '/history/:id/last', jbuilder:'history/detail' do
      @history = History.where(customer_id: params[:id]).order(:check_day).last
    end

    post '/history/:id', jbuilder: 'history/register' do
      @meter = params[:meter]
      @last_meter = History.where(customer_id: params[:id]).order(:check_day).last.meter

      History.create!(
        id: SecureRandom.uuid,
        customer_id: params[:id],
        check_day: params[:check_day],
        meter: @meter,
        last_meter: @last_meter
      )
    end
  end
end
