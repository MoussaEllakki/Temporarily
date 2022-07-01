//
//  TableViewCell.swift
//  a
//
//  Created by Moussa El Lakki on 2022-06-29.
//

import UIKit

class TableViewCell: UITableViewCell , UICollectionViewDelegate , UICollectionViewDataSource {
  

    @IBOutlet weak var myCollection: UICollectionView!
    @IBOutlet weak var tittle: UILabel!
    
    var menu = [Type] ()
    var viewController = ViewController()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        myCollection.delegate = self
        myCollection.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    func setUpCell (title : String , menu : [Type]){
        
        self.tittle.text = title
        self.menu = menu
        
        
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return menu.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "colCell", for: indexPath) as! CollectionViewCell
        
        print("")
        print("jag skapar contacts \(indexPath.row)")
        print("")
        cell.name.text = menu[indexPath.row].name + " " +  "\(menu[indexPath.row].price)"
        
        return cell
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        print("")
        print("")
        
        print("look  \(menu[indexPath.row].name)")
        
        viewController.visaGuestOrder(viewCon: viewController, order: menu[indexPath.row]) {
            
        
                
                print("yesssss")
                
            
            
            
        }
        
        
    }
    
    
    
  
    
    

}
