//
//  SiguienteViewController.swift
//  Listas Estaticas iOS
//
//  Created by alumno on 2/2/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit

class SiguienteViewController: UIViewController {

    var nombreCompleto = ""
    var numeroCuenta = ""
    var reubicacion = ""
    var seleccionMultiple = ""
    
    @IBOutlet weak var lblnombre: UILabel!
    
    @IBOutlet weak var lblnumero: UILabel!
    
    @IBOutlet weak var lblreubicacion: UILabel!
    
    
    @IBOutlet weak var lblSeleccionMultiple: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblnombre.text = nombreCompleto
        lblnumero.text = numeroCuenta
        lblreubicacion.text = reubicacion
        
        lblSeleccionMultiple.text = String(seleccionMultiple)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnregreasr(_ sender: UIButton) {
        
        self.dismiss(animated: true) { 
            
            
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
