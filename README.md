# ScheduleArgs
scheduleコマンドにfunctionと同様の引数を渡すためのデータパックライブラリ

対応バージョン: Minecraft JavaEdition 23w31a

# 導入方法
datapacksに突っ込んでreloadするだけ

# 使用方法

### 構文
```mcfunction
function schedule_args:function {function:<function>,args:<args>,tick:<tick>}
```
\<function> : String - ファンクション/ファンクションタグのResourceLocation 例: "minecraft:test" "#mynamespace:myfunctag"

\<args> : Compoound - ファンクションに渡す引数 例 {foo:"bar"}

\<tick> : Int - 何tick後に実行するか

### 使用例
```mcfunction
function schedule_args:function {function:"minecraft:test",args:{foo:"bar"},tick:10}
```
とすると、10tick後に
```mcfunction
function minecraft:test {foo:"bar"}
```
が実行される。

# 注意
実行者や実行位置は引き継がれない

実行位置は minecraft:overworld 0 0 0

実行者はサーバーとなる

# 連絡先
バグ報告や要望はこちらまで。

[Twitter](https://twitter.com/txkodo)

[X](https://x.com/txkodo)
