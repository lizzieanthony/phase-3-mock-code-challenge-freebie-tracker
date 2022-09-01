class Dev < ActiveRecord::Base
    has_many :freebies 
    has_many :companies, through: :freebies

    def received_one?(item_name)
        item = self.freebies.find do |freebie|
            freebie.item_name == item_name 
        end
        if item 
            true
        else
            false
    end
end
        # if self.freebies.where(item_name: item_name).count > 0 
        #     true
        # else
        #     false
        # end
    
    def give_away(dev, freebie)
        if freevie.dev_id == self.id
            freebie.dev_id = dev.id
            freebie.save
        else
            "You don't own that freebie"  
        end
    end
end
