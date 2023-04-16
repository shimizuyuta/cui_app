class Character
    attr_accessor :name, :hp, :attack, :defense, :speed, 

    def initialize(name, hp, attack, defense, speed)
        @name = name
        @hp = hp
        @attack = attack
        @defense = defense
        @speed = speed
    end

    def take_damage(damage)
        @hp -= damage
    end

    def attack(target)
        damage = @attack - target.defense
        damage = 0 if damage <0
        puts "#{@name}の攻撃！#{target.name}に#{damage}のダメージを与えた！"
        target.take_damage(damage)
    end

    def alive?
        @hp > 0
    end
end