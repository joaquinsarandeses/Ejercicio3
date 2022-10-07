//
//  Muertos.swift
//  Ejercicio3
//
//  Created by joaquin sarandeses on 6/10/22.
//

import Foundation
import UIKit

class Muertos : Protocolo{
    
    var imageUrl:String = ""
    var title:String = ""
    var subtitle:String = ""
    
    init(imageUrl: String,
         title: String,
         subtitle:String){
        self.imageUrl=imageUrl
        self.title=title
        self.subtitle=subtitle
        
    }
    

    
    func getImageUrl() -> String {
        return imageUrl
    }
    
    func getTitle() -> String {
        return title
    }
    
    func getSubTitle() -> String {
        return subtitle
    }
    
    func setImageUrl(url: String) {
        imageUrl = url
    }
    
    func setTitle(titulo: String) {
        title = titulo
    }
    
    func setSubTitle(subtitulo: String) {
        subtitle = subtitulo
    }
    
    
    
    
}
