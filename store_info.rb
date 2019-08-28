
# アルファベット大文字で始まると定数扱い
DEFAULT_STORE_NAME = 'store.json'

class StoreInfo
  # オブジェクト生成時に自動で呼ばれるメソッド（コンストラクタ扱い）
  # デフォルト引数が指定できる
  # インスタンス変数は外部から直接参照することはできない
  def initialize(storeName = DEFAULT_STORE_NAME)
    # 「@xxxx」がインスタンス変数
    @storeName = storeName
  end

  def getName
    @storeName
  end
end
