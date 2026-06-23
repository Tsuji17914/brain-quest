class PurchasesController < ApplicationController
  before_action :authenticate_user!

  def create
    @item = Item.find(params[:shop_id])

    if current_user.purchase!(@item)
      redirect_to shop_index_path, notice: "「#{@item.name}」を購入しました！"
    else
      redirect_to shop_index_path, alert: "Gold が足りません。"
    end
  end
end
