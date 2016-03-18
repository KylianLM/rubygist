class TableGists < ActiveRecord::Migration
  ActiveRecord::Base.establish_connection "#{Rails.env}"
  def change
    create_table :gists
    add_column :gists, :id_gist ,:string
    add_column :gists, :url , :string
    add_column :gists, :name, :string
  end
end
