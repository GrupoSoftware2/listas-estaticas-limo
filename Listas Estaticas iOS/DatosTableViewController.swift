//
//  DatosTableViewController.swift
//  Listas Estaticas iOS
//
//  Created by alumno on 2/2/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit

class DatosTableViewController: UITableViewController {

    @IBOutlet weak var swtReu: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if  indexPath.section == 2 && indexPath.row == 4 {
            
            self.performSegue(withIdentifier: "guardarcampos", sender: self)
            tableView.deselectRow(at: indexPath, animated: true)
            print("Cambio de pantalla")
        
        }
        
        //tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // MARK: - Table view data source

    /*override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
*/
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let indexPathNombre = IndexPath(row:0,section:0)
        let primerCelda = tableView.cellForRow(at: indexPathNombre)
        let nombrecompleto  = primerCelda?.textLabel?.text
       
        let indexPathCelular =  IndexPath(row:1,section:0)
        let segundaCelda = tableView.cellForRow(at: indexPathCelular)
        let nroCuenta  = segundaCelda?.detailTextLabel?.text
        
        let reubicacion = "Si"
        
       /* if  swtReu.isOn{
            reubicacion = "Si"
        }else{
            reubicacion = "No"
        } */
        
        let rows = self.tableView.indexPathsForSelectedRows?.map{$0.description}
        
        let viewController = segue.destination as! SiguienteViewController
        viewController.nombreCompleto = nombrecompleto!
        viewController.numeroCuenta = nroCuenta!
        viewController.reubicacion = reubicacion
        viewController.seleccionMultiple = String(describing: rows)
        
        
        
        
    }
 

}
