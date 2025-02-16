;クイズ

*start

[cm  ]
[clearfix]
[start_keyconfig]

[bg storage="room.jpg" time="100"]

;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=160 top=870 width=1200 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=810]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと"#"の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言
;akane
[chara_new  name="akane" storage="chara/akane/silhouette.png" jname="あかね"]
;キャラクターの表情登録
[chara_face name="akane" face="angry" storage="chara/akane/angry.png"]
[chara_face name="akane" face="doki" storage="chara/akane/doki.png"]
[chara_face name="akane" face="happy" storage="chara/akane/happy.png"]
[chara_face name="akane" face="sad" storage="chara/akane/sad.png"]
[chara_face name="akane" face="normal" storage="chara/akane/normal.png"]


;yamato
[chara_new  name="yamato"  storage="chara/yamato/normal.png" jname="やまと" ]

#
こんにちは[p]

このゲームでは情報セキュリティに関する問題を、[p]
何問か出題していきます。[p]
それでは早速......[p]

[font  size="30"   ]
#?
ちょっとまったーーーーー[p]
[resetfont  ]

#
？？？？？？？？？？？？？？？？？？？？？？？？[p]

;キャラクター登場
[chara_show  name="akane" top=350 width="480" height="718.8"]
#?
ただ問題を表示するだけのゲームなんて...[p]
[chara_mod  name="akane" face="angry"]
花がないでしょ！！！[p]
[chara_mod name="akane" face="normal"]
#あかね
はじめまして、私の名前はあかね[p]
ここからは私が進行役として問題を出題するわね[p]

[chara_mod  name="akane" face="happy"]
それじゃあ行ってみよう！[p]

; 正解数をカウントするscore関数の初期化処理
[eval exp="score=0"]

第１問！[p]
[chara_mod  name="akane" face="normal"]
リスクアセスメントを実施する目的として適切なものはどれでしょう？[p]

[glink  color="blue"  storage="scene1.ks"  size="32"  x="220"  width="1000"  y="375"  text="1.リスクを無視して事業展開のスピードを最優先にすること"  target="*sel1.wrong"  ]
[glink  color="blue"  storage="scene1.ks"  size="32"  x="220"  width="1000"  y="500"  text="2.企業のセキュリティに対する脅威を見つけ、影響を評価し、対策を導入すること"  target="*sel1.correct "]
[glink  color="blue"  storage="scene1.ks"  size="32"  x="220"  width="1000"  y="650"  text="3.クラウドサービスの利用を避けること"  target="*sel1.wrong"  ]
[s  ]

*sel1.wrong
[chara_mod  name="akane" face="sad"]
ざんねーん.....[p]
[chara_mod  name="akane" face="normal"]
正解は２番の「企業のセキュリティに対する脅威を見つけ、影響を評価し、対策を導入すること」でした！[p]
リスクアセスメントは、企業のセキュリティに対する脅威を特定して、その影響を評価した上で、適切な対策を導入することが目的なんだ。[p]
だから、リスクを無視したり、クラウドサービスの利用を避けることは適切じゃないんだ。[p]
まだ問題はたくさんあるから、次頑張ろ！[p]
@jump target=*common1

*sel1.correct
[eval exp="score += 1"]
[chara_mod  name="akane" face="happy"]
せいかい！もしかして天才？[p]
それじゃあこの調子で、次も行ってみよう！[p]
@jump target=*common1

*common1
[chara_mod  name="akane" face="happy"]
第２問！[p]
[chara_mod  name="akane" face="normal"]
情報資産の洗い出しで、リスト化する対象として適切なものはどれでしょう？[p]

[glink  color="blue"  storage="scene1.ks"  size="32"  x="220"  width="1000"  y="400"  text="1.組織が保有する情報システム"  target="*sel2.correct"  ]
[glink  color="blue"  storage="scene1.ks"  size="32"  x="220"  width="1000"  y="500"  text="2.組織の従業員の個人的な趣味に関する情報"  target="*sel2.wrong"  ]
[glink  color="blue"  storage="scene1.ks"  size="32"  x="220"  width="1000"  y="600"  text="3.過去に発生したリスク分析結果"  target="*sel2.wrong"  ]
[s  ]

*sel2.wrong
[chara_mod  name="akane" face="sad"]
おしい〜......[p]
[chara_mod  name="akane" face="normal"]
正解は１番の「組織が保有する情報システム」でした！[p]
リスクアセスメントでは、組織が実際に保有している事業継続に関わる情報資産を洗い出して、リスト化する必要があるんだ。[p]
だから従業員の個人的な情報は情報資産にはならないんだ。[p]
あと、過去のリスク分析の結果は、リスクアセスメントの参考にはなるけど、洗い出しの対象じゃないんだ。[p]
@jump target=*common2

*sel2.correct
[eval exp="score += 1"]
[chara_mod  name="akane" face="happy"]
せいかい！良い調子だね♪[p]
@jump target=*common2

*common2
[chara_mod  name="akane" face="happy"  ]
どんどん次に行ってみよう！[p]
第３問[p]
[chara_mod  name="akane" face="normal"]
情報資産を評価する時に考慮すべき観点として適切じゃないものはどれでしょう？[p]

[glink  color="blue"  storage="scene1.ks"  size="32"  x="220"  width="1000"  y="400"  text="1.完全性"  target="*sel3.wrong"  ]
[glink  color="blue"  storage="scene1.ks"  size="32"  x="220"  width="1000"  y="500"  text="2.機密性"  target="*sel3.wrong"  ]
[glink  color="blue"  storage="scene1.ks"  size="32"  x="220"  width="1000"  y="600"  text="3.経済性"  target="*sel3.correct"  ]
[s  ]

*sel3.wrong
[chara_mod  name="akane" face="sad"]
あちゃぁ....ざんねん...[p]
[chara_mod  name="akane" face="normal"]
正解は3番の経済性でした！[p]
情報資産は、完全性、機密性、可用性の観点から総合的に評価するんだ。[p]
経済性は、リスク対応を検討する時の要素の一つではあるけど、情報資産の評価観点には含まれてないんだ。[p]
@jump target=*common3

*sel3.correct
[eval exp="score += 1"]
[chara_mod  name="akane" face="happy"]
せいかい！[p]
もしかして私よりも頭がいいかも...？[p]
[chara_mod  name="akane" face="normal"]
@jump target=*common3

*common3
いよいよ折り返しだよ！頑張って！[p]
[chara_mod  name="akane" face="happy"]
第４問！[p]
[chara_mod  name="akane" face="normal"]
リスクの大きさを算出する計算式として正しいものはどれでしょう？[p]

[glink  color="blue"  storage="scene1.ks"  size="32"  x="220"  width="1000"  y="400"  text="1.  リスク値 = 資産の価値 × 脅威 × 脆弱性"  target="*sel4.correct"  ]
[glink  color="blue"  storage="scene1.ks"  size="32"  x="220"  width="1000"  y="500"  text="2.  リスク値 = 資産の価値 / (脅威 + 脆弱性)"  target="*sel4.wrong"  ]
[glink  color="blue"  storage="scene1.ks"  size="32"  x="220"  width="1000"  y="600"  text="3.  リスク値 = 資産の価値 + 脅威 + 脆弱性"  target="*sel4.wrong"  ]
[s  ]

*sel4.wrong
[chara_mod  name="akane" face="normal"]
............[p]
[chara_mod  name="akane" face="sad"]
ざんねん！[p]
[chara_mod  name="akane" face="normal"]
正解は1番のリスク値 = 資産の価値 × 脅威 × 脆弱性でした！[p]
@jump target=*common4

*sel4.correct
[eval exp="score += 1"]
............[p]
[chara_mod  name="akane" face="happy"]
せいかい！簡単すぎたかな？[p]
@jump target=*common4

*common4
[chara_mod  name="akane" face="normal"]
あともうちょっと！最後まで頑張って！[p]
[chara_mod  name="akane" face="happy"]
第５問！[p]
[chara_mod  name="akane" face="normal"]
リスク対応の方法として含まれないものはどれでしょう？[p]

[glink  color="blue"  storage="scene1.ks"  size="32"  x="220"  width="1000"  y="400"  text="1.リスク回避"  target="*sel5.wrong"  ]
[glink  color="blue"  storage="scene1.ks"  size="32"  x="220"  width="1000"  y="500"  text="2.リスク掃除" target="*sel5.correct"  ]
[glink  color="blue"  storage="scene1.ks"  size="32"  x="220"  width="1000"  y="600"  text="3.リスク転移"  target="*sel5.wrong"  ]
[s  ]

*sel5.wrong
[chara_mod  name="akane" face="sad"]
んーざんねん！[p]
[chara_mod  name="akane" face="normal"]
正解は２番「リスク掃除」でした！[p]
@jump target=*common5

*sel5.correct
[eval exp="score += 1"]
[chara_mod  name="akane" face="happy"]
おー！せいかい！[p]
[chara_mod  name="akane" face="normal"]
もしかして、簡単すぎた？[p]
@jump target=*common5

*common5
[chara_mod  name="akane" face="happy"]
次はいよいよ最後の問題だよ！気を引き締めてね！[p]
第６問！[p]
[chara_mod  name="akane" face="normal"]
定量的リスク分析で用いられるツールとして挙げられるものはどれでしょう？[p]

[glink  color="blue"  storage="scene1.ks"  size="32"  x="220"  width="1000"  y="400"  text="1.リスクマトリクス"  target="*sel6.wrong"  ]
[glink  color="blue"  storage="scene1.ks"  size="32"  x="220"  width="1000"  y="500"  text="2.デシジョンツリー分析" target="*sel6.correct"  ]
[glink  color="blue"  storage="scene1.ks"  size="32"  x="220"  width="1000"  y="600"  text="3.JRAM/CRAMM"  target="*sel6.wrong"  ]
[s  ]

*sel6.wrong
[chara_mod  name="akane" face="sad"]
んーざんねん！[p]
[chara_mod  name="akane" face="normal"]
正解は２番の「デシジョンツリー分析」でした！[p]
リスクマトリクスは定性的リスク分析で用いられるよ。[p]
あと、JRAM/CRAMMはその他のリスク分析手法なんだ。[p]
@jump target=*common6

*sel6.correct
[eval exp="score += 1"]
[chara_mod  name="akane" face="happy"]
おー！せいかい！[p]
[chara_mod  name="akane" face="normal"]
締まりがいいね！[p]
@jump target=*common6

*common6
[chara_mod  name="akane" face="happy"]
はい！これで問題はおしまいだよ！[p]
それじゃあ早速結果発表をしよっか！[p]
[chara_mod name="akane" face="normal"]

[if exp="score == 6"]
今回のきみの正解数は....[p]
[chara_mod name="akane" face="happy"]
[emb exp="score"]問でした！[p]
おめでとう！全問正解だよ！[p]
きみは情報セキュリティの達人だね！[p]

[elsif exp="score >= 3"]
今回のきみの正解数は...[p]
[chara_mod name="akane" face="happy"]
[emb exp="score"]問でした！[p]
お疲れさま！[p]
良い成績だったね！あともう少しで満点だったよ！[p]

[elsif exp="score > 0"]
きみの正解数は...[p]
[emb exp="score"]問でした！[p]
まだまだ伸びしろがあるね！[p]
[chara_mod name="akane" face="happy"]
もっと正解数を増やせるように頑張っていこう！[p]

[else]
きみの正解数は...[p]
[chara_mod name="akane" face="sad"]
[emb exp="score"]問でした...[p]
[chara_mod name="akane" face="normal"]
今回の結果は残念だったけど、これから頑張ればきっと全問正解できるようになるよ！[p]
[chara_mod name="akane" face="happy"]
わたしも応援してるね！[p]
[endif]

それじゃあ！今回のゲームはこれでおしまい！[p]
また遊んでね！ばいばい〜！[p]

[chara_hide name="akane"]
[position layer="message0" visible=false]
@layopt layer=message0 visible=false

@jump storage="title.ks"