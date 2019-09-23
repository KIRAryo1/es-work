# es-work
Practice for Elasticsearch with docker

# 参考にしたサイト
http://tech.innovation.co.jp/2018/08/09/constructing-enviroment-for-Elasticsearch-and-Kibana.html

# curlを用いたインデックスの作成等

インデックスの作成
```
curl -H "Content-Type: application/json" -XPOST "localhost:9200/bank/_doc/_bulk?pretty&refresh" --data-binary "@data/accounts.json"
```

`bank` : index名。任意

`_doc` : type。指定が必要

`--data-binary` : jsonからデータインポートする時はこれ必要

`@data/accouts.json` : jsonデータの相対パス
