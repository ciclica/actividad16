//
//  Lista_ViewController.swift
//  
//
//  Created by Ciclica on 1/1/16.
//
//

import UIKit

class Lista_ViewController: UIViewController {
    
    
    // arreglo para productos
    // selee desde el modelo
     // var productos = Productos.sharedInstance
    var usuarios = Usuarios.sharedInstance
    
    // variables de la escena listado productos usada para el listado
    @IBOutlet weak var txt_Listado: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       //  agrego 10 usuarios
        usuarios.addUsuario(Usuario(user:"Lizzy",pass:"1"))
        usuarios.addUsuario(Usuario(user:"Anghelo",pass:"2"))
        usuarios.addUsuario(Usuario(user:"Aaron",pass:"3"))
        usuarios.addUsuario(Usuario(user:"Xavi",pass:"4"))
        usuarios.addUsuario(Usuario(user:"Marcelo",pass:"5"))
        usuarios.addUsuario(Usuario(user:"Phelipe",pass:"6"))
        usuarios.addUsuario(Usuario(user:"Beatriz",pass:"7"))
        usuarios.addUsuario(Usuario(user:"Bernardo",pass:"8"))
        usuarios.addUsuario(Usuario(user:"Andres",pass:"9"))
        usuarios.addUsuario(Usuario(user:"Queen Elizabeth",pass:"10"))
        usuarios.addUsuario(Usuario(user:"Guillermo",pass:"11"))
        
        
        
        var salida: String
        salida = ""
        
       // var usuariosOrdenados: NSArray
        
     
        
        txt_Listado.text = salida
        //  obtengo el listado desde el metodo definido en la clase Producto
        for usu in usuarios.getListadoDeUsuarios(){
            salida = salida + "\n " + usu.description
        
           // usuariosOrdenados[1].description = usu.description
        
        
        }
        
        txt_Listado.text = salida

    
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btn_OrdenarAZ(sender: AnyObject) {
        
      //
      // boton para ordenar de a..z
        
        txt_Listado.text = ""
        var salidaOrdenadaAZ:String
        
        salidaOrdenadaAZ = ""
        
        // arreglo para cargar los nombres de la clase y luego ordenarlos
        var usuariosOrdenados  = [String]()
        
        var id = 0;
        for usu in usuarios.getListadoDeUsuarios(){
            
            // agregamos uno a uno los usuario de la clase al arreglo
            usuariosOrdenados.append(usu.description)
            
        }
        
        //  ordena el arreglo de a ... z
        usuariosOrdenados.sort({$0 < $1})
        
        // concatenamos la salida con el usario y retorno de carro
        for id = 0 ; id < usuariosOrdenados.count ; ++id {
            salidaOrdenadaAZ = salidaOrdenadaAZ + "\n " + usuariosOrdenados[id]
        }
        
        
        // llenamos el text  view..
        txt_Listado.text = salidaOrdenadaAZ
        
        
    }
    
    
    @IBAction func btn_OrdenarZA(sender: AnyObject) {
     
        //
        // boton para ordenar de a..z
        
        txt_Listado.text = ""
        var salidaOrdenadaZA:String
        
        salidaOrdenadaZA = ""
        
        // arreglo para cargar los nombres de la clase y luego ordenarlos
        var usuariosOrdenadosZA  = [String]()
        
        var idZA = 0;
        for usu in usuarios.getListadoDeUsuarios(){
            
            // agregamos uno a uno los usuario de la clase al arreglo
            usuariosOrdenadosZA.append(usu.description)
            
        }
        
        //  ordena el arreglo de a ... z
        usuariosOrdenadosZA.sort({$0 >  $1})
        
        // concatenamos la salida con el usario y retorno de carro
        for idZA = 0 ; idZA < usuariosOrdenadosZA.count ; ++idZA {
            salidaOrdenadaZA = salidaOrdenadaZA + "\n " + usuariosOrdenadosZA[idZA]
        }
        
        
        // llenamos el text  view..
        txt_Listado.text = salidaOrdenadaZA
        
        
        
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
