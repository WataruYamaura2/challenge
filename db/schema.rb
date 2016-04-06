# encoding: UTF-8
ActiveRecord::Schema.define(version: 20160112151527) do

  create_table "blogs", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "body",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
