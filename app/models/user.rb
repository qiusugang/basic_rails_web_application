require 'digest/sha1'
require "digest/md5"

class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  def self.sha1(pass, salt)
    Digest::SHA1.hexdigest("#{salt}--#{pass}--")
  end

  def self.create_random
    return (0...8).map { (97 + rand(26)).chr }.join
  end

  def self.find_user(name, pass)
    users = self.find_by_sql(["select id,name,role_id,encrypt_password,password_salt from users where name=?", name])
    user = users[0]
    if user && user.password_salt
      crypt_pwd = sha1(pass, user.password_salt)
      if user.encrypt_password == crypt_pwd
        return user
      end
    end
    return nil
  end
end
