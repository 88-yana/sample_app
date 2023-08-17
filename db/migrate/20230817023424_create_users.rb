class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end

# changeメソッドはcreate_tableというRailsのメソッドを呼び、
# ユーザーを保存するためのテーブルをデータベースに作成します。
# create_tableメソッドはブロック変数を1つ持つブロック（4.3.2）を受け取ります。
# ここでは（“table”の頭文字を取って）tです。
# そのブロックの中でcreate_tableメソッドはtオブジェクトを使って、
# nameとemailカラムをデータベースに作ります。
# 型はどちらもstringです。