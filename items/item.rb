class Item 
    attr_accessor :name, :description, :heal, :attack_boost, :defense_boost, :speed_boost 

    def initialize(name, description, heal, attack_boost, defense_boost, speed)
        @name = name
        @description = description
        @heal = heal
        @defense_boost = defense_boost
        @attack_boost = attack_boost
        @speed_boost = speed
    end

    def use(target)
        if @heal > 0
            target.hp += @heal
            puts "#{target.name}のHPが#{@heal}回復した"
        end

        if @attack_boost > 0
            target.attack += @attack_boost 
            puts "#{target.name}の攻撃力が#{@attack_boost}上がった}"
        end

        if @defense_boost > 0
            target.defense += @defense_boost 
            puts "#{target.name}の攻撃力が#{@defense_boost}上がった}"
        end

        if @speed_boost > 0
            target.speed += @speed_boost 
            puts "#{target.name}のスピードが#{@speed_boost}上がった}"
        end
    end
end