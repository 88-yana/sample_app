class User < ApplicationRecord
  # Active Recordのコールバック（callback）メソッドで実装することにします。コールバックメソッドは、Active Recordオブジェクトが存在する間の特定の時点で呼び出されます
  # オブジェクトが保存されるタイミングで処理を実行したいので、before_saveというコールバック
  before_save { email.downcase!  }
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end

# validates はメソッド
# presence: true は，オプションハッシュ
# メソッドの最後の引数としてハッシュを渡す場合、波カッコを付けなくても問題ない


#VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
# foo@bar..com
#VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i