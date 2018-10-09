//
//  formulario.swift
//  Practica4
//
//  Created by OscarVago on 18/09/18.
//  Copyright © 2018 DosDesign. All rights reserved.
//



import UIKit

var tasks = [Tasks]()
var tkask: Tasks?

//singleton
class Tasks{
    
    var field = String()
    var dater = String()
    init (field:String, dater:String){
        self.field = field
        self.dater = dater
    }
}

class formulario: UIViewController {
 
    @IBOutlet weak var field: UITextField!
    @IBOutlet weak var dater: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func adder(_ sender: Any) {
        
        let fecha = "\(String(describing: dater.date))"
        let tasking = field.text
        
        let alerta = UIAlertController(title: "Agregar Tarea", message: tasking, preferredStyle: .alert)
        alerta.addAction(UIAlertAction(title: NSLocalizedString("Agregar", comment: "Default action"), style: .default, handler: { _ in
            tasks.append(Tasks(field: tasking!, dater: fecha))
            
        }))
        self.present(alerta, animated: true, completion: nil)
        
        
        
    }
}



