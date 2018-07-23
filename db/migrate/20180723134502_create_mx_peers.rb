class CreateMxPeers < ActiveRecord::Migration[5.2]
  def change
    create_table :mx_peers, id: :uuid do |t|
      t.string :url
      t.string :ip
      t.datetime :first_seen
      t.datetime :last_seen
      t.time :response_time
      t.string :node_type
      t.integer :distance
      t.uuid :uuid
      t.integer :trust

      t.timestamps
    end
  end
end
