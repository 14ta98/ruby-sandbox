# -*- coding: utf-8 -*-
require 'pstore'

# PStpreデータベースをオープンする
db = PStore.new('fruitdb')

# Pstoreが読み込みモードのときに
# 書き込もうとするとエラーになる
db.transaction(true) do
    db["drink"] = "grape juice"
end