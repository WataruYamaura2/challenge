# encoding: UTF-8
ActiveRecord::Schema.define(version: 20_160_112_151_527) do
  create_table 'articles', force: :cascade do |t|
    t.string 'title',      limit: 255
    t.text 'body', limit: 65_535
    t.datetime 'created_at',               null: false
    t.datetime 'updated_at',               null: false
  end
end
