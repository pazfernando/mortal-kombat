class Player

   @life

   def initialize
     @life = 100
   end

   def hit percentage
     @life -= percentage
   end

end
