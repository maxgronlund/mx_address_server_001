require "application_system_test_case"

class MxPeersTest < ApplicationSystemTestCase
  setup do
    @mx_peer = mx_peers(:one)
  end

  test "visiting the index" do
    visit mx_peers_url
    assert_selector "h1", text: "Mx Peers"
  end

  test "creating a Mx peer" do
    visit mx_peers_url
    click_on "New Mx Peer"

    fill_in "Distance", with: @mx_peer.distance
    fill_in "First Seen", with: @mx_peer.first_seen
    fill_in "Ip", with: @mx_peer.ip
    fill_in "Last Seen", with: @mx_peer.last_seen
    fill_in "Node Type", with: @mx_peer.node_type
    fill_in "Response Time", with: @mx_peer.response_time
    fill_in "Trust", with: @mx_peer.trust
    fill_in "Url", with: @mx_peer.url
    fill_in "Uuid", with: @mx_peer.uuid
    click_on "Create Mx peer"

    assert_text "Mx peer was successfully created"
    click_on "Back"
  end

  test "updating a Mx peer" do
    visit mx_peers_url
    click_on "Edit", match: :first

    fill_in "Distance", with: @mx_peer.distance
    fill_in "First Seen", with: @mx_peer.first_seen
    fill_in "Ip", with: @mx_peer.ip
    fill_in "Last Seen", with: @mx_peer.last_seen
    fill_in "Node Type", with: @mx_peer.node_type
    fill_in "Response Time", with: @mx_peer.response_time
    fill_in "Trust", with: @mx_peer.trust
    fill_in "Url", with: @mx_peer.url
    fill_in "Uuid", with: @mx_peer.uuid
    click_on "Update Mx peer"

    assert_text "Mx peer was successfully updated"
    click_on "Back"
  end

  test "destroying a Mx peer" do
    visit mx_peers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mx peer was successfully destroyed"
  end
end
