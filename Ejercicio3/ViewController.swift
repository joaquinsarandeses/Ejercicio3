//
//  ViewController.swift
//  Ejercicio3
//
//  Created by joaquin sarandeses on 4/10/22.
//

import UIKit
import Foundation

class TablaVC: UIViewController,UITableViewDataSource, UITableViewDelegate{

    
    
    @IBOutlet weak var tableView: UITableView!
    
    

    let arrayMuertos = [
         Muertos(imageUrl: "http://cdn.shopify.com/s/files/1/0407/1168/4263/collections/thumbnail_image0_1024x.png?v=1650404960", title:"Tolkien", subtitle: "ayer"),
         Muertos(imageUrl: "https://images.genius.com/24df596c2e657d773c3e6bc9477a1a25.1000x1000x1.jpg", title:"Tolkien", subtitle: "ayer"),
         Muertos(imageUrl: "https://images.genius.com/24df596c2e657d773c3e6bc9477a1a25.1000x1000x1.jpg", title:"Tolkien", subtitle: "ayer"),
         Muertos(imageUrl: "https://images.genius.com/24df596c2e657d773c3e6bc9477a1a25.1000x1000x1.jpg", title:"Tolkien", subtitle: "ayer"),
         Muertos(imageUrl: "https://images.genius.com/24df596c2e657d773c3e6bc9477a1a25.1000x1000x1.jpg", title:"Tolkien", subtitle: "ayer"),
         Muertos(imageUrl: "https://images.genius.com/24df596c2e657d773c3e6bc9477a1a25.1000x1000x1.jpg", title:"Tolkien", subtitle: "ayer"),
         Muertos(imageUrl: "https://images.genius.com/24df596c2e657d773c3e6bc9477a1a25.1000x1000x1.jpg", title:"Tolkien", subtitle: "ayer")

     ]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayMuertos.count
    }
    
     
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : Cell = tableView.dequeueReusableCell(withIdentifier:"cellID", for: indexPath) as! Cell

        let Title = arrayMuertos[indexPath.row].title
        let SubTitle = arrayMuertos[indexPath.row].subtitle
        let Image = getImageData(url:arrayMuertos[indexPath.row].imageUrl)
        cell.Title.text = Title
        cell.SubTitle.text = SubTitle
        cell.Imagen.image = Image
        return cell
    }

     override func viewDidLoad() {
         tableView.dataSource = self
         tableView.delegate = self
         super.viewDidLoad()
         
         // Do any additional setup after loading the view.

     }
    
//fin
     func getImageData(url:String)->UIImage{
         let url = URL(string: url)
         let data = try? Data(contentsOf: url!)
         let imageView: UIImage = UIImage(data: data!)!
         return imageView
         
     }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200;
    }
    
    


 }

