class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts, id: false, comment: 'アカウント' do |t|
      t.integer :id ,primary_key: true, auto_increment:true
      t.string  :account, comment: 'アカウント名'
      t.string  :password_digest, comment: 'パスワード（ダイジェスト）'
      t.integer :user_type
      t.string  :email, comment: 'メールアドレス'
      t.timestamps
    end
  end
end
