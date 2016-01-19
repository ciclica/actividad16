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
    var productos = Productos.sharedInstance
   
    
    // variables de la escena listado productos usada para el listado
    @IBOutlet weak var txt_Listado: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //  agrego 3 productos como ejemplo para ser desplegados en el listado
        productos.addProducto(Producto(txt_Nombre:"DVD 80 min",txt_Cantidad:"10"))
        productos.addProducto(Producto(txt_Nombre:"Disco Duro 80GB",txt_Cantidad:"80"))
        productos.addProducto(Producto(txt_Nombre:"teclado ergo 102",txt_Cantidad:"840"))
        
        var salida: String
        salida = ""
        
        //  obtengo el listado desde el metodo definido en la clase Producto
        for pro in productos.getListado(){
            salida = salida + "\n " + pro.description
        }
        
        txt_Listado.text = salida

    
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
