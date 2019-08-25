require 'json'

# 永続化を担う。
class Persistence
  extend JSON

  # アルファベット大文字で始まると定数扱い
  DEFAULT_STORE_NAME = 'store.json'

  # オブジェクト生成時に自動で呼ばれるメソッド（コンストラクタ扱い）
  # デフォルト引数が指定できる
  # インスタンス変数は外部から直接参照することはできない
  def initialize(storeName = DEFAULT_STORE_NAME)
    # 「@xxxx」がインスタンス変数
    @storeName = storeName
  end

  def save(key, val)
    File.open(@storeName, "w+") do |f|
      p f
      storeHash = load(f)
      p storeHash
      pStoreHash = parse(storeHash)
      pStoreHash[key] = val
      # p storeHash
      dump(pStoreHash, f)
    end
  end

  def get(key)
    File.open(@storeName, "r") do |f|
      storeHash = load(f)
      p storeHash
      storeHash[key]
    end
  end
end
