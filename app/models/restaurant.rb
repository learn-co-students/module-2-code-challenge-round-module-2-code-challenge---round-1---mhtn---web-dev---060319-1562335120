class Restaurant < ApplicationRecord
  
    has_many :pizzas 

    def made_pizza
      Pizza.all.select do |pizza|
            pizza.restaurant == self 
        end 
    end

#     <% @restaurants.made_pizza.each do |pizza| %>
# <%= link to @pizza.name, pizza_path(pizza) %>
# <% end %>

end
