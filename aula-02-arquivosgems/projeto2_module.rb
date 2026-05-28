#módulo de conversão de comprimento

#milhas para pés
#milhas para polegadas
#milhas para centímetros

module LenghtConversions
    def self.miles_to_feet(miles)
        miles *  5280
    end

    def self.miles_to_inches(miles)
        feet = miles_to_feet(miles)
        feet * 12
    end

    def self.miles_to_cm(miles)
        cm = miles_to_inches(miles)
        cm * 2.54
    end
end

# puts LenghtConversions.miles_to_feet(10)
# puts LenghtConversions.miles_to_inches(20)
# puts LenghtConversions.miles_to_cm(30)