
import Foundation



class Table {
    
    
    
    var sum = 0.0
    var status = "ledig"
    var number = ""
    var guests = [Guest]()
    var orders = [Type]()
    
   
    func getTableSumPlus (type : Type){
        self.sum += type.price
     }
    
    
    
     func getTableSumMinus (type : Type){
         self.sum -= type.price
         
     }
     
    
    
    func getTableGuest (guest : Guest){
        
        self.guests.append(guest)
   
       
        
        
    }
    
    
    
}



class Guest {
    
    var sum = 0.0
    var orders = [Type]()
    var guestNumber = ""
    
   
    
    func orderFood (type : Type){
        
        self.orders.append(type)
        self.sum += type.price
        
    }
    
    func deleteOrder (index : Int){
        
        self.sum -= orders[index].price
        self.orders.remove(at: index)
       
        
    }
    
    
}
