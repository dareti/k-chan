class Customer_API < Grape::API
  resource :customer do
    get do
      Customer.all
    end

    get ':id' do
      Customer.find(params[:id])
    end

    post do
      Customer.create(
        {
          name: params[:name],
          address: params[:address]
        });
    end

    put ':id' do
      Customer.find(params[:id]).update(
        {
          name: params[:name],
          address: params[:address]
        })
    end

    delete ':id' do
      Customer.find(params[:id]).destroy
    end
  end
end
