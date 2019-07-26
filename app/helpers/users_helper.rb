module UsersHelper

    class Calculator
        def initialize(quantity, optionprice)
            @quantity = quantity
            @optionprice = optionprice
        end
        def futurevalue
            @futurevalue = @quantity.to_i * @optionprice.to_i
        end
    end
    
end
