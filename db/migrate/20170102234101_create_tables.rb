class CreateTables < ActiveRecord::Migration
  def change
     create_table :figures do |t|
       t.string :name
     end
     create_table :landmarks do |t|
       t.integer :figure_id
       t.integer :year_completed
       t.string :name
     end
     create_table :figuretitles do |t|
       t.integer :figure_id
       t.integer :title_id
     end
     create_table :titles do |t|
       t.string :name
     end
  end
end
