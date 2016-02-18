class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.integer :article_id
      t.references :article, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
