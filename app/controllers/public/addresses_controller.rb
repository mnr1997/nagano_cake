class Public::AddressesController < PublicController
  
  def create
    @address = Address.new(address_params)
    @address.customer_id = current_customer.id
    if @address.save
      redirect_to customer_addresses_path
    else
      @addresses = Address.all
      render :index
    end
  end
  
  def index
    @address = Address.new
    @addresses = Address.all
  end

  def edit
  end
  
  def update
    
  end
  
  def destroy
    address = Address.find(params[:id])
    address.destroy!
    redirect_to addresses_path
  end
  
  private
  
  def address_params
    params.require(:address).permit(:name, :postal_code, :address)
  end
end
