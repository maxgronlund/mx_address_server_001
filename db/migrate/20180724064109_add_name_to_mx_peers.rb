class AddNameToMxPeers < ActiveRecord::Migration[5.2]
  def change
    add_column :mx_peers, :name, :string
  end
end
