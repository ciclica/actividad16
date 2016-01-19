//
//  Producto.swift
//  interfaz
//
//  Created by Ciclica on 1/1/16.
//  Copyright (c) 2016 Ciclica. All rights reserved.
//
import Foundation

// Producto sera un modelo
class Producto: NSObject, Printable {
    var Nombre:String
    var Cantidad:String
    
    //  constructor de la clase
    init (txt_Nombre:String, txt_Cantidad:String){
        Nombre = txt_Nombre
        Cantidad = txt_Cantidad
    }
    
    
    //  metodo funcion para devolver datos de cada producto
    func getProducto()->String{
        return Nombre + " con:" + Cantidad
    
    }
    
    // la variable description pertenece a Printable aca lo sobre escribimos para luego mostrar los datos de nuestra clase en la escena del SB
    override var description : String {
        return "\(Nombre), \(Cantidad)"
    }
    
    
    
}



class Productos {
    
    //  es una clase singleton...
    //  indica que solo puede ser accesada solo una vez a la vez
    class var sharedInstance: Productos {
        struct Static {
            static var instance : Productos?
            static var token : dispatch_once_t = 0
            
        }
    
        dispatch_once(&Static.token){
            Static.instance = Productos()
            
        }
        
        return Static.instance!
    }

    //  variable para todo los productos
    private var losProductos = [Producto]()
    
    
    //  metodo para leer los datos
    func getListado()->NSArray{
        return losProductos
    
    }

    // metodo para agregar productos
    func addProducto(newProducto:Producto){
        losProductos.append(newProducto)
    }


}



