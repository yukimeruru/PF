module NotificationsHelper

  def notification_form(notification)
    @visiter = notification.visiter
    @order = nil
    your_item = link_to 'あなたの投稿', users_item_path(notification), style:"font-weight: bold;"
    @visiter_order = notification.order_id
    @comment = Comment.find_by(id: @visiter_order)&.content
    tag.a(@visiter.name, href:users_user_path(@visiter), style:"font-weight: bold;")+"が"+tag.a('あなたの投稿', href:users_item_path(notification.item_id), style:"font-weight: bold;")+"にコメントしました"
  end
  
  def unchecked_notifications
    @notifications = current_user.passive_notifications.where(checked: false)
  end
  
end
