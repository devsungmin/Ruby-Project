class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name #이름(string)
      t.string :email #이메일(string)
      t.integer :age #나이(int)
      t.boolean :married #결혼 여부(boolean)
      #'rails db:migrate'을 입력하여 db을 생성함
      t.timestamps
    end
  end
end
