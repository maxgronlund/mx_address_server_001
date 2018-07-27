class HomeController < ApplicationController
  def index
    @mx_peers = MxPeer.order(:name)
  end
end
