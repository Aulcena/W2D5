class Item
    def self.valid_date?(date_string)
        y = (0..9)
        m = (0..12)
        d = (0..31)
        formation = [y, y, y, y, "-" , m, m ,"_", d, d].join(" ") 
        formation
    end

end

p Item.valid_date?('2019-10-25') # true
Item.valid_date?('1912-06-23') # true
Item.valid_date?('2018-13-20') # false
Item.valid_date?('2018-12-32') # false
Item.valid_date?('10-25-2019') # false