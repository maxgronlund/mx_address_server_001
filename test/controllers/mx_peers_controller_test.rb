require 'test_helper'

class MxPeersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mx_peer = mx_peers(:one)
  end

  test "should get index" do
    get mx_peers_url
    assert_response :success
  end

  test "should get new" do
    get new_mx_peer_url
    assert_response :success
  end

  test "should create mx_peer" do
    assert_difference('MxPeer.count') do
      post mx_peers_url, params: { mx_peer: { distance: @mx_peer.distance, first_seen: @mx_peer.first_seen, ip: @mx_peer.ip, last_seen: @mx_peer.last_seen, node_type: @mx_peer.node_type, public_key: @mx_peer.public_key, response_time: @mx_peer.response_time, trust: @mx_peer.trust, url: @mx_peer.url, uuid: @mx_peer.uuid } }
    end

    assert_redirected_to mx_peer_url(MxPeer.last)
  end

  test "should show mx_peer" do
    get mx_peer_url(@mx_peer)
    assert_response :success
  end

  test "should get edit" do
    get edit_mx_peer_url(@mx_peer)
    assert_response :success
  end

  test "should update mx_peer" do
    patch mx_peer_url(@mx_peer), params: { mx_peer: { distance: @mx_peer.distance, first_seen: @mx_peer.first_seen, ip: @mx_peer.ip, last_seen: @mx_peer.last_seen, node_type: @mx_peer.node_type, public_key: @mx_peer.public_key, response_time: @mx_peer.response_time, trust: @mx_peer.trust, url: @mx_peer.url, uuid: @mx_peer.uuid } }
    assert_redirected_to mx_peer_url(@mx_peer)
  end

  test "should destroy mx_peer" do
    assert_difference('MxPeer.count', -1) do
      delete mx_peer_url(@mx_peer)
    end

    assert_redirected_to mx_peers_url
  end
end
