class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :article, null: false, foreign_key: true # a special data type for models.
                                                            # It creates a new column on your database table
                                                            # with the provided model name appended with an _id that can hold integer values

      t.timestamps
    end
  end
end
