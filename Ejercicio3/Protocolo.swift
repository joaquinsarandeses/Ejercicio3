//
//  Protocolo.swift
//  Ejercicio3
//
//  Created by joaquin sarandeses on 6/10/22.
//

import Foundation

protocol Protocolo {
    var imageUrl: String { get set}
    var title: String { get set}
    var subtitle: String { get set}
    
    // Getters
    func getImageUrl() -> String
    func getTitle() -> String
    func getSubTitle() -> String
    
    // Setters
    func setImageUrl(url: String)
    func setTitle(titulo: String)
    func setSubTitle(subtitulo: String)
}
