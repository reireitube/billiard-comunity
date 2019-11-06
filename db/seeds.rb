# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
    email: "test@test.com",
    password: "0000",
    level: "C",
    bowlard: 50,
    your_pool: "Billiard Community's pool"
)

Home.create!(
    [
        {
            id: 5, prefecture: "神奈川県", pool_hall: "サイドナイン", published_at:"2019-10-24 00:20:19", created_at: "2019-10-06 10:50:22", updated_at: "2019-10-26 11:13:43", user_id: 5, tel_number: nil, address: "神奈川県横浜市保土ケ谷区保土ケ谷区和田２丁目１５−１９ KWプレイス横濱和田町 2F"},
        {
            id: 6, prefecture: "神奈川県", pool_hall: "POOL LABO", published_at: nil, created_at: "2019-10-06 15:17:23", updated_at: "2019-10-26 11:44:15", user_id: 5, tel_number: nil, address: "神奈川県横浜市中区伊勢佐木町2-66 満利屋ビル4階"},
        {
            id: 7, prefecture: "東京都", pool_hall: "梶ヶ谷メイプルハウス", published_at: "2019-10-25 15:20:19", created_at: "2019-10-06 17:50:00", updated_at: "2019-10-26 11:20:55", user_id: 7, tel_number: "044-888-7988", address: "神奈川県川崎市高津区向ケ丘67"},
        {
            id: 8, prefecture: "神奈川県", pool_hall: "横浜ラウンドワン", published_at: nil, created_at: "2019-10-06 17:54:59", updated_at: "2019-10-28 18:57:42", user_id: 5, tel_number: nil, address: "神奈川県横浜市西区南幸2-8-16"},
        {
            id: 9, prefecture: "神奈川県", pool_hall: "快活クラブ海老名店", published_at: nil, created_at: "2019-10-07 16:00:08", updated_at:"2019-10-28 18:58:45", user_id: 5, tel_number: nil, address: "神奈川県海老名市中央１丁目４−３１ 海老名プラザビル 2F"},
        {
            id: 10, prefecture: "神奈川県", pool_hall: "ビリヤード&ダーツ コモルーム", published_at: nil, created_at: "2019-10-28 19:17:19", updated_at: "2019-10-28 19:19:12", user_id: 5, tel_number: nil, address: "神奈川県藤沢市藤沢５７１ 2Ｆ"}
    ]
)