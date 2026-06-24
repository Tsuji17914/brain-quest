class ShopController < ApplicationController
  before_action :authenticate_user!

  def index
    @items = Item.all.order(:price)
    @user_items = current_user.user_items.unused.includes(:item).group_by { |ui| ui.item.effect }
    @inventory = current_user.user_items.unused.includes(:item)
                             .group_by { |ui| ui.item.effect }
                             .transform_values { |uis| { total: uis.size, activated: uis.count(&:activated) } }
  end
end
