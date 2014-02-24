class Profile < ActiveRecord::Migration
  def change
    create_table "profiles", :force => true do |t|
    t.integer  "user_id"
    t.string   "twitter_name"
    t.string   "github_name"
    t.text     "bio"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    end
  end
end
