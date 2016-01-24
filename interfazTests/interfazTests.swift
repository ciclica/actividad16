//
//  interfazTests.swift
//  interfazTests
//
//  Created by Ciclica on 1/1/16.
//  Copyright (c) 2016 Ciclica. All rights reserved.
//

import UIKit
import XCTest
//  importamos nuestro codigo en donde las clases fueron declaradas publicas
import interfaz

class interfazTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // ejecutado al incio de la llama
    }
    
    override func tearDown() {
        // Ejecutado al final de la ejecucion
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        
        
        // arreglo de usuario
        var usuarios = [Usuario]()
        var acceso:Bool
        acceso = false
        
        usuarios += [ Usuario(user:"demo",pass:"demo"), Usuario(user:"demo1",pass:"demo1") ]
        
        
            
        for user in usuarios{
            // comparo las variables
            // si user digitado equal to user de arreglo
            if user.getUser() == "demo" {
                if user.getPass() == "demo"{
                    acceso = true
                }
            }
        }
        
        
        
        
        XCTAssert(acceso, "Pass")
        //XCTAssert(false, "Pass")
        
        
        
        
        
        
        
        // test de login, comparacion entre dato cargado a la clase y el resultado esperado
    XCTAssertEqual(Usuario(user:"demo1",pass:"demo1").getUser(), "demo1" , "Acceso Correcto"   )
    }
    
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
            
            // arreglo para cargar los nombres de la clase y luego ordenarlos
            var usuariosOrdenados  = [String]()
            usuariosOrdenados.append(Usuario(user:"Juan",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Peter",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Arnado",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Beatriz",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Marcelo",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Xeon",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Zara",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Guile",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Julio",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Juan",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Peter",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Arnado",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Beatriz",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Marcelo",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Xeon",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Zara",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Guile",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Julio",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Juan",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Peter",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Arnado",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Beatriz",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Marcelo",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Xeon",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Zara",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Guile",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Julio",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Juan",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Peter",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Arnado",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Beatriz",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Marcelo",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Xeon",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Zara",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Guile",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Julio",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Juan",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Peter",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Arnado",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Beatriz",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Marcelo",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Xeon",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Zara",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Guile",pass:"demo1").getUser())
            usuariosOrdenados.append(Usuario(user:"Julio",pass:"demo1").getUser())
            
            //  ordena el arreglo de a ... z
            usuariosOrdenados.sort({$0 < $1})
            
            
            
            /// concatenamos la salida con el usario y retorno de carro
            //var id: Int
            //var salidaOrdenadaAZ:String
            //salidaOrdenadaAZ=""
            //for id = 0 ; id < usuariosOrdenados.count ; ++id {
            //    salidaOrdenadaAZ = salidaOrdenadaAZ + "\n " + usuariosOrdenados[id]
            //}
            
            
        
        }
    }
    
}
