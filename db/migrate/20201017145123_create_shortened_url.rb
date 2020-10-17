class CreateShortenedUrl < ActiveRecord::Migration[6.0]
  def change
    create_table :shortened_urls do |t|
      t.string :short_url,  null: false

      t.timestamps
    end
    add_index :shortened_urls, :short_url, unique: true
  end
end
