require_relative 'character'

class Enemy < Character
    def initialize(name, hp, attack, defense, speed, exp, gold)
        super(name, hp, attack, defense, speed)
        @exp = exp
        @gold = gold
    end

    def drop_item
        @items.sample
    end
end