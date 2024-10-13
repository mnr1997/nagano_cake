class Public::HomesController < PublicController
  before_action :authenticate_customer!, except: [:top]
  
  def top
  end

  def about
  end
end
