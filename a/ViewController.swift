
import UIKit
import Firebase
class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource, UICollectionViewDelegate , UICollectionViewDataSource {
   
  
    @IBOutlet weak var GuestNumber: UILabel!
    @IBOutlet weak var tableSum: UILabel!
    @IBOutlet weak var TableNumber: UILabel!
    @IBOutlet weak var orderCollectionView: UICollectionView!
    @IBOutlet weak var MyTableView: UITableView!
    
    var ref :  DatabaseReference!
    
    var messageForuser = MessageForUser()
    var restaurant = Restaurant()
    var table = Table()
    var guest = Guest()
    var guestNumber = 1
    var tableNumber = "3"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         restaurant.fillMenu()
         MyTableView.delegate = self
         MyTableView.dataSource = self
         orderCollectionView.delegate = self
         orderCollectionView.dataSource = self
        
         ref = Database.database().reference()
         TableNumber.text = "Bord \(tableNumber)"
        
     }

    
    
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurant.allMenu.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tCell", for: indexPath) as! TableViewCell
        let title = restaurant.allMenu[indexPath.row].tittle
        let menu = restaurant.allMenu[indexPath.row].menu
        cell.viewController = self
        cell.setUpCell(title: title, menu: menu )
        return cell
        
    }
    
    
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return guest.orders.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "orderCell", for: indexPath) as! OrderCollectionViewCell
        cell.orderName.text = guest.orders[indexPath.row].name
        return cell
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        table.getTableSumMinus(type: guest.orders[indexPath.row])
        guest.deleteOrder(index: indexPath.row)
        orderCollectionView.reloadData()
         updateOrderInformation()
    
        
    }
    
    
    
    func visaGuestOrder (viewCon : ViewController , order : Type, comp : @escaping () -> Void){
     

        viewCon.orderCollectionView.reloadData()
        guest.orderFood(type: order)
        table.getTableSumPlus(type: order)
       updateOrderInformation()
        
        comp()
        
    }
    
   
    @IBAction func btnNext(_ sender: Any) {
      
        if (guest.sum == 0.0){
            
            messageForuser.sendMessage(controller: self, msg: messageForuser.currentGuestNotorder)
            
        }else{
            
            table.guests.append(guest)
             guest =  Guest()
            guestNumber += 1
            orderCollectionView.reloadData()
            updateOrderInformation()
            
        }
        
        
        
    }
    
    
    @IBAction func btnSend(_ sender: Any) {
        
        if (table.sum == 0.0){
            
            messageForuser.sendMessage(controller: self, msg: messageForuser.NoOrder)
        }
        
    }
    
    
    
    
    func updateOrderInformation (){
        
        guest.guestNumber = String (guestNumber)
        GuestNumber.text = "Gäst \(guest.guestNumber) summa \(guest.sum)"
        tableSum.text = String (table.sum)
        
        
    }
    
    

}








