class Public::HomesController < PublicController
  skip_before_action :authenticate_customer!, only: [:top]
  
  def top
  end

  def about
  end
end
