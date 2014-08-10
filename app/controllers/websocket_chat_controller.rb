# -*- coding: utf-8 -*-
class WebsocketChatController < WebsocketRails::BaseController
  def message_receive
    receive_message = message()
    broadcast_message(:websocket_chat, receive_message)
  end
end
