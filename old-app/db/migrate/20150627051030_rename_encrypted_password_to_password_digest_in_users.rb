class RenameEncryptedPasswordToPasswordDigestInUsers < ActiveRecord::Migration
  def change
    rename_column :users, :encrypted_password, :password_digest
  end
end
