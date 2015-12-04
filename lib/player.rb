class Player

   attr_accessor :life

   @life

   def initialize
     @life = 100
   end

   def hit percentage
     @life -= percentage
   end

end
