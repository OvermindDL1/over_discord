import ProtocolEx

defmodule Overdiscord.Auth.AuthData do
  defstruct [:server, :location, :username, :nickname, :permissions, id: nil]
end

defprotocol_ex Overdiscord.Auth do
  def to_auth(from)
end
