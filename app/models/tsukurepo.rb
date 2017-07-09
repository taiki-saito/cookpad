class Tsukurepo < ApplicationRecord
  # photoをattachファイルとする。stylesで画像サイズを定義できる
  has_attached_file :photo

  # ファイルの拡張子を指定（これがないとエラーが発生する）
  validates_attachment :photo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  belongs_to :user
  belongs_to :recipe
end
