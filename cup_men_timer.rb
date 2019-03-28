# open3をリクエストする
require 'open3'


# 時間表示用引数 t
t = 0


# 利用者が設定したい分数
puts "何分待たなきゃいけないカップラーメンですか？数字のみいれてくださいね。"
i = gets.to_i
puts i.to_s + "分ですね、かしこまりました。"
sleep(5)

# iに渡された値に60を掛ける 例：３*60=180
x = i * 60
puts "タイマーを開始します。"


# タイマーfor文 sleepを利用して１秒毎にxの値に達するまでtを出力する
for t in 1..x.to_i
    sleep(1)
    puts t
end
puts "カップラーメンが出来ました、食べましょう！"


# open3.caputure3で外部コマンドに値をぶん投げる。sayコマンドをぶん投げてmacたんに喋らせる。
Open3.capture3('say', 'カップラーメンが出来ました、食べましょう！')