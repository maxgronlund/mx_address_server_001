class MxPeer < ApplicationRecord
  ADDRESS_SERVER='address_server'
  AUTHORIZATION_PROVIDER='authorization_provider'
  AUTHENTICATION_PROVIDER='authentication_provider'
  PUBLIC_LEDGER='public_ledger'

  SERVER_TYPES =
    [
      ['Address server', ADDRESS_SERVER],
      ['Authorization provider', AUTHORIZATION_PROVIDER],
      ['Authentication provider', AUTHENTICATION_PROVIDER],
      ['Public ledger', PUBLIC_LEDGER]
    ].freeze
end
