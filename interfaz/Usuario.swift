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

// para efectos de los test la clase es declara publica
public class Usuario: NSObject, Printable {
    var User:String
    var Pass:String
    
    
    //  constructor de la clase usuarios
    public init(user:String,pass:String){
        self.User = user
        self.Pass = pass
        
    }
    
    
    public func getUser()->String{
        return User
        
    }
    
    public func getPass()->String{
        return Pass
    }
    
    
    //  sobrescribimos el metodo description
    
    public override var description : String {
        return "\(User)"
    }
    
    
}

class Usuarios {

    // clase singleton
    class var sharedInstance: Usuarios {
        struct Static {
            static var instance : Usuarios?
            static var token : dispatch_once_t = 0
            
        }
        
        dispatch_once(&Static.token){
            Static.instance = Usuarios()
            
        }
        
        return Static.instance!
    }
    
    //  variable para todo los productos
    private var losUsuarios = [Usuario]()
    
    
    //  metodo para leer los datos
    func getListadoDeUsuarios()->NSArray{
        return losUsuarios
        
    }
    
    // metodo para agregar productos
    func addUsuario(newUsuario:Usuario){
        losUsuarios.append(newUsuario)
    }
    

    
    
    
}