class Player

   attr_accessor :life

   @life

   def initialize
     @life = 100
   end

   def hit percentage
     if (@life < percentage)
       percentage = @life
     end

     @life -= percentage
   end

end
