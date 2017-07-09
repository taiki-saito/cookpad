class Recipe < ApplicationRecord
  # photoをattachファイルとする。stylesで画像サイズを定義できる
  has_attached_file :photo

  # ファイルの拡張子を指定（これがないとエラーが発生する）
  validates_attachment :photo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  has_many :tsukurepos
  belongs_to :user

  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Recipe.where(['name LIKE ? or content LIKE ?', "%#{search}%", "%#{search}%"])
    else
      Recipe.all #全て表示。
    end
  end
end
