class User < ApplicationRecord

    attr_accessor :name, :age

    def initialize(name:, age:)
        @name = name
        @age = age
    end

    def disp_user
        if @age > 16
            return "#{@name}さん"
        elsif @age > 6
            return "#{@name}くん"
        elsif @age > 0
            return "#{@name}ちゃん"
        else
            "適切な値ではありません"
        end
   
    end

end
