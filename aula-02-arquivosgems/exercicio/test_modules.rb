module AreaCalcSquare
    def self.area(side)
        side * side
    end
end

module AreaCalcRectangle
    def self.area(base, width)
        base * width
    end
end


module AreaCalcTriangle
    def self.area(base, width)
    base * width / 2
    end
end