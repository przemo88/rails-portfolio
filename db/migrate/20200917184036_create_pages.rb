class CreatePages < ActiveRecord::Migration[6.0]
  def up 
    create_table :pages do |t|

      t.string "name"
      t.string "description"
      t.string "github"
      t.string "website"
    end
    add_index("pages","id")
  end

  def down
    drop_table :pages
  end

end
