

import Foundation
import UIKit


class MessageForUser  {
    
    
    let currentGuestNotorder = "Gästen har inte beställt något för ta nästa"
    
    let NoOrder = "Det finns inga order för att skicka"
    
      func sendMessage (controller : UIViewController ,  msg : String){
        let dialogMessage = UIAlertController(title: "Warning", message: msg, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default, handler: { (action) -> Void in
        })
        dialogMessage.addAction(ok)
        controller.present(dialogMessage, animated: true, completion: nil)
      }
 
    
   
    
    
}
