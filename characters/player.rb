require_relative "character"

class Player < Character
    attr_accessor :gold, :items

    def initalize(name, hp, attack, defense, speed)
        super(name, hp, attack, defense, speed)
        @gold = 0
        @items = []
    end

    def add_item(item)
        @items << item 
        puts "#{item.name} を手に入れた"
    end

    def use_item(item, target)
        item.use(target)
        @items.delete(item)
    end

end