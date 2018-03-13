module Helpers
  def mock_user_typing(*args)
    allow(mock_input).to receive_message_chain(:gets, :chomp).and_return(*args)
  end
end