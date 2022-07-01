
import Foundation



class Restaurant {
    
    
    
    var allMenu = [Menu]()
    
  
  func   fillMenu(){
       
      
      var food1 = Food(name: "Food1", price: 10.0)
      var food2 = Food(name: "Food2", price: 20.0)
      var food3 = Food(name: "Food3", price: 30.0)
      var food4 = Food(name: "Food4", price: 40.0)
      var food5 = Food(name: "Food5", price: 50.0)
      var food6 = Food(name: "Food6", price: 60.0)
      var food7 = Food(name: "Food7", price: 70.0)
      var food8 = Food(name: "Food8", price: 80.0)
      var food9 = Food(name: "Food9", price: 90.0)
      var food10 = Food(name: "Food10", price: 100.0)
      var food11 = Food(name: "Food11", price: 110.0)
      var food12 = Food(name: "Food12", price: 120.0)
      var food13 = Food(name: "Food13", price: 130.0)
      var food14 = Food(name: "Food14", price: 140.0)
      var food15 = Food(name: "Food15", price: 150.0)
      var food16 = Food(name: "Food16", price: 160.0)
      var food17 = Food(name: "Food17", price: 170.0)
      var food18 = Food(name: "Food18", price: 180.0)
      
      var foods = [food1,food2,food3,food4,food5,food6,food7,food8,food9,food10,food11,food12,food13,food14,food15,food16,food17,food18]
      
      var foodsMenu = Menu(tittle: "Food", menu: foods)
      
      var drink1 = Drink(name: "Drink1", price: 10.0)
      var drink2 = Drink(name: "Drink2", price: 20.0)
      var drink3 = Drink(name: "Drink3", price: 30.0)
      var drink4 = Drink(name: "Drink4", price: 40.0)
      var drink5 = Drink(name: "Drink5", price: 50.0)
      var drink6 = Drink(name: "Drink6", price: 60.0)
      var drink7 = Drink(name: "Drink7", price: 70.0)
      var drink8 = Drink(name: "Drink8", price: 80.0)
      var drink9 = Drink(name: "Drink9", price: 90.0)
      var drink10 = Drink(name: "Drink10", price: 100.0)
      
      var drinks = [drink1,drink2,drink3,drink4,drink5,drink6,drink7,drink8,drink9,drink10]
      
      var drinksMenu = Menu(tittle: "Drinks", menu: drinks)
      
      var kids1 = Kids(name: "Kids1", price: 10.0)
      var kids2 = Kids(name: "Kids2", price: 20.0)
      var kids3 = Kids(name: "Kids3", price: 30.0)
      var kids4 = Kids(name: "Kids4", price: 40.0)
      var kids5 = Kids(name: "Kids5", price: 50.0)
      var kids6 = Kids(name: "Kids6", price: 60.0)
      var kids7 = Kids(name: "Kids7", price: 70.0)
      var kids8 = Kids(name: "Kids8", price: 80.0)
      var kids9 = Kids(name: "Kids9", price: 90.0)
      
      var kids = [kids1,kids2,kids3,kids4,kids5,kids6,kids7,kids8,kids9,]
      
      var kidsMenu = Menu(tittle: "Kids", menu: kids)
      
      self.allMenu = [foodsMenu,drinksMenu,kidsMenu]
        
    }
    
    
    
    
}



class Type {
    
    var name : String
    var price : Double
    
    
    init (name : String , price : Double){
        
        self.name = name
        self.price = price
        
    }
    
    
    
    
}

class Food : Type {
    
}

class Drink : Type{
    
}

class Kids : Type {
    
    
}




class Menu {
    
    var tittle : String
    var menu :[Type]
    
    
    init (tittle : String , menu : [Type]){
        
        self.tittle = tittle
        self.menu = menu
        
    }
    
    
    
    
    
}

class FoodMenu : Menu {
    
   
}


class KidsMenu : Menu {
    

   
}


class DrinksMenu  : Menu{
    

   
}

