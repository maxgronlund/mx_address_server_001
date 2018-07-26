class Api::V1::MxPublicLedgersController < ApplicationController
  # before_action :set_mx_peer, only: [:show, :edit, :update, :destroy]

  # GET /mx_peers
  # GET /mx_peers.json
  def index
    # @mx_peers = MxPeer.where(node_type: MxPeer::PUBLIC_LEDGER)
    @mx_peers = MxPeer.where(node_type: MxPeer::PUBLIC_LEDGER)
    render json: @mx_peers
  end

  # GET /mx_peers/1
  # GET /mx_peers/1.json

  # def show
  # end

  # # GET /mx_peers/new
  # def new
  #   @mx_peer = MxPeer.new
  # end

  # # GET /mx_peers/1/edit
  # def edit
  # end

  # # POST /mx_peers
  # # POST /mx_peers.json
  # def create
  #   @mx_peer = MxPeer.new(mx_peer_params)

  #   respond_to do |format|
  #     if @mx_peer.save
  #       format.html { redirect_to @mx_peer, notice: 'Mx peer was successfully created.' }
  #       format.json { render :show, status: :created, location: @mx_peer }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @mx_peer.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /mx_peers/1
  # # PATCH/PUT /mx_peers/1.json
  # def update
  #   respond_to do |format|
  #     if @mx_peer.update(mx_peer_params)
  #       format.html { redirect_to @mx_peer, notice: 'Mx peer was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @mx_peer }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @mx_peer.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /mx_peers/1
  # # DELETE /mx_peers/1.json
  # def destroy
  #   @mx_peer.destroy
  #   respond_to do |format|
  #     format.html { redirect_to mx_peers_url, notice: 'Mx peer was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_mx_peer
  #     @mx_peer = MxPeer.find(params[:id])
  #   end

  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def mx_peer_params
  #     params.require(:mx_peer).permit(:url, :ip, :first_seen, :last_seen, :response_time, :node_type, :distance, :uuid, :trust)
  #   end

end
