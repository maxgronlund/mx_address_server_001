class MxPeer < ApplicationRecord
  ADDRESS_SERVER='address_server'
  AUTHORIZATION_SERVER='authorization_server'
  AUTHENTICATION_SERVER='authentication_server'

  SERVER_TYPES =
    [
      ['Address server', ADDRESS_SERVER],
      ['Authorization server', AUTHORIZATION_SERVER],
      ['Authentication server', AUTHENTICATION_SERVER]
    ].freeze
end
