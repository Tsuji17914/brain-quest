class UserItemsController < ApplicationController
  before_action :authenticate_user!

  def activate
    if current_user.activate_item!(params[:effect])
      redirect_to shop_index_path, notice: "アイテムを装備しました"
    else
      redirect_to shop_index_path, alert: "装備できるアイテムがありません"
    end
  end

  def deactivate
    if current_user.deactivate_item!(params[:effect])
      redirect_to shop_index_path, notice: "装備を外しました"
    else
      redirect_to shop_index_path, alert: "装備中のアイテムがありません"
    end
  end
end
