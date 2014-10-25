# -*- coding: utf-8 -*-
class WebsocketChatController < WebsocketRails::BaseController
  def message_receive
    receive_message = message()
    broadcast_message(:websocket_chat, receive_message)
  end

  def user_join
    user_info = message()
    broadcast_message(:websocket_user, user_info)
  end

end
