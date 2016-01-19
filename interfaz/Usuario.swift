//
//  Usuario.swift
//  interfaz
//
//  Created by Ciclica on 1/1/16.
//  Copyright (c) 2016 Ciclica. All rights reserved.
//

import Foundation


//  clase usuarios
//  metodos para retornar user y pass
class Usuario {
    var User:String
    var Pass:String
    
    init(user:String,pass:String){
        self.User = user
        self.Pass = pass
        
    }
    
    
    func getUser()->String{
        return User
        
    }
    
    func getPass()->String{
        return Pass
    }
    
    
}
