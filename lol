functor
import
   Application
   System
define
fun {Take X N}
   if N < 1
     then nil
   else
    case X
     of nil then nil
     [] H|T then H|{Take T N-1 }
     end
   end
end
   {System.showInfo [1 2 3]}
   {System.showInfo {Take [1 4 3 5] 2}}
   {Application.exit 0}
end

1.2///

functor
import
   Application
   System
define
   fun {Last X N}
      local Reverse Take in
         fun{Reverse Remainder Partial}
           case Remainder 
			of nil then Partial 
			[] H|T then {Reverse T H|Partial} end 
		 end
		 
		 fun {Take Y M}
          if M < 1
            then nil
          else
            case Y
              of nil then nil
              [] H|T then H|{Take T M-1 }
              end
          end
         end
		 {Reverse {Take {Reverse X nil} N} nil}
      end
    end
   {System.showInfo 'Hello World!'}
   {System.showInfo {Last [1 3 4 5 ] 3}}
   {Application.exit 0}
end

///1.3

functor
import
   Application
   System
define
fun {Merge X Y}
   case X 
     of nil then Y
   else
     case Y 
       of nil then X
      else
        if X.1 < Y.1 
          then X.1|{Merge X.2 Y}
        else
          Y.1|{Merge X Y.2}
        end
      end
    end
end
   {System.showInfo [1 2 3]}
   {System.showInfo {Merge [1 2 3 5] [2 3 6 7]}}
   {Application.exit 0}
end

