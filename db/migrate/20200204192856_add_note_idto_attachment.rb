class AddNoteIdtoAttachment < ActiveRecord::Migration[6.0]
  def change
    add_column :attachments, :attachable_id, :integer
    add_column :attachments, :attachable_type, :string
  end
end
