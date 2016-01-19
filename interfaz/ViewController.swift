//
//  ViewController.swift
//  interfaz
//
//  Created by Ciclica on 1/1/16.
//  Copyright (c) 2016 Ciclica. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //  variables del escenario o vista 
    // en este caso una para usuario y otra para la clave
    
    @IBOutlet weak var txt_Usuario: UITextField!
    @IBOutlet weak var txt_Clave: UITextField!
    
    
    
    // arreglo de usuario
    var usuarios = [Usuario]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // carga de arreglo usuarios con dos user demo y demo 1
        
        usuarios += [
            Usuario(user:"demo",pass:"demo"),
            Usuario(user:"demo1",pass:"demo1")
            
        ]

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // control para cuando se presiona el boton Ingresar
    
    @IBAction func btn_Ingresar(sender: AnyObject) {
        
        //  accesi es una variable boleana que nos permite sabes si el login es correcto
        var acceso :Bool
        acceso = false
        
        
        // recorre el arreglo usuarios para buscar 
        //  si el ingreso en el escenario
        // es igual en el datos del arreglo
        
        for user in usuarios{
            // comparo las variables
            // si user digitado equal to user de arreglo
            if user.getUser() == txt_Usuario.text {
                if user.getPass() == txt_Clave.text{
                    acceso = true
                }
            }
        }
        
        if acceso == true {
            
            // como el acceso es correcto pasamos a la vista de prodcutos
            // segunda vista en nuestro storyboard.
            
            // nuesta escena tiene el id listaDeProductos
            let btn_Ingresar = self.storyboard?.instantiateViewControllerWithIdentifier("ListaProductos") as! Lista_ViewController
            
            self.navigationController?.showViewController(btn_Ingresar, sender: sender)
            
            
        
        }else{
        
            
            displayMyAlertMessage("Usario sin acceso utilizar user: demo pass : demo")
        
        }
        
        
        
        
        
    }
    
    
    // control para cuando se presiona el boton limpiar
    @IBAction func btn_Limpiar(sender: AnyObject) {
        
        // dejamos la variables de la escena en blanco
        
        txt_Clave.text = ""
        txt_Usuario.text = ""
        
    }
    
    // funcion para desplegar un mensaje en pantalla
    // con boton ok
    
    func displayMyAlertMessage(mensaje:String){
        let alerta = UIAlertController(title: "Atencion", message:mensaje, preferredStyle: UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction(title:"OK", style:UIAlertActionStyle.Default,handler:nil)
        alerta.addAction(okAction)
        
        self.presentViewController(alerta,animated:true,completion:nil)
        
    }
    
    
    
    
    
    
    


}

