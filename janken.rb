class Player
  def hand
    puts "Veuillez saisir un nombre."
    puts "0: Goo, 1: Choki , 2: Par"
   

    input_hand = gets.chomp.to_i;

    while true
      # if 「input_hand」が「0, 1, 2」のいずれかの場合だった場合
      # ヒント：include?メソッドについて調べてみましょう。
        # 「input_hand」をそのまま返す。
        # ヒント：戻り値を返して繰り返し処理を終了させたい場合、「return」を使用します。
      # else それ以外の場合
        # プレイヤーに「0〜2」を入力させる文章を表示させる。
        # puts "0〜2のVeuillez saisir un nombre."
        # puts "0: Goo, 1:Choki , 2: Par "
        # 変数「input_hand」にプレイヤーの入力値を代入します。
      
      # end if  l'instruction se termine
      if input_hand>=0 && input_hand<=2
        return input_hand
      else
        puts "Veuillez saisir un nombre."
        puts "0: Goo, 1: Choki , 2: Par"

        input_hand = gets.chomp.to_i;
      end

    end
  end
end

class Enemy
  def hand
    # Goo、Choki、Parの値をランダムに取得する。
    return rand(2)
  end
end


class Janken
  def pon(player_hand, enemy_hand)
    # Remplacez ["goo", "choki", "par"] la variable "janken".


    janken = ["Goo", "Choki", "Par"]

    #「相手の手は#{相手の手}です。」と出力させます。
    puts "La main de l'adversaire est #{janken[enemy_hand]}";
    if player_hand == enemy_hand
      # Playerクラスの戻り値(player_hand)とEnemyクラスの戻り値(enemy_hand)の値が同じだった場合
      # "Aiko" est sorti.
      puts "Aiko"
      # Renvoie "true" pour exécuter à plusieurs reprises des roche-papier-ciseaux.
      # ヒント：「return」を使って戻り値を返すことができます。しかし、Rubyでは戻り値を返す場合、「return」を省略するのが一般的です。
    elsif (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
      # もしも下記の組み合わせだった場合
      # (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
      #「あなたの勝ちです」を出力します。
      #「false」を返してじゃんけんを終了させます。
      puts "Vous gagnez."
    else
      #「あなたの負けです」を出力します。
      #「false」を返してじゃんけんを終了させます。
      puts "Vous êtes en train de perdre"
    end
  end
end

# Écrivez la logique pour exécuter le jeu roche-papier-ciseaux.
class GameStart
  
  # selfを使用することで、GameStartをインスタンス化することなく、nom de la classeを使ってjankenponメソッドを呼び出せます。
  def self.jankenpon
    next_game = true;
    
    # Remplacez le Player instancié par la variable "player".
    player = Player.new

    #Assignez une instanciation d'Enemy à la variable "ennemi".
    enemy = Enemy.new

    #Assignez une instanciation de Janken à la variable "janken".
    janken = Janken.new

    # 変数「next_game」に「true」を代入しましょう。
    # 「next_game」が「false」だと繰り返し処理を終了し、「true」だと繰り返し処理を継続します。
    # while next_game
      # J'utilise des roche papier ciseaux avec "janken.pon (player.hand, ennemi.hand)".
      #「janken.pon(player.hand, enemy.hand)」でじゃんけんを実行しています。
      janken.pon(player.hand, enemy.hand)

      # puts "_____________________________________________\n\n"
    # end
  end
end


# nom de la classeを使ってjankenponメソッドを呼び出します。
GameStart.jankenpon

