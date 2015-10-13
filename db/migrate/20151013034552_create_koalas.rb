class CreateKoalas < ActiveRecord::Migration
  def change
    create_table :koalas do |t|
      t.string :name
      t.string :shoutout
    end
  end
end
