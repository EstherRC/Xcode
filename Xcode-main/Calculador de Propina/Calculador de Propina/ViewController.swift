//
//  ViewController.swift
//  Calculador de Propina
//
//  Created by Usuario on 22/08/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var total: UITextField!
    
    @IBOutlet weak var propina: UITextField!
    
    @IBOutlet weak var comensales: UITextField!
    
    func calcularTotal()-> Double{
        var final: Double
        let total = Double(self.total.text!)!
        let propina = Double(self.propina.text!)!
        
        final = total + (total*(propina/100))
        return final
    }
    
    func calcularPorComensal()-> Double{
        var finalComensal: Double
        let total = Double(self.total.text!)!
        let propina = Double(self.propina.text!)!
        let comensales = Double(self.comensales.text!)!
        finalComensal = (total + (total*(propina/100)))/comensales
        
        return finalComensal
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultado = calcularTotal()
        let resultado2 = calcularPorComensal()
        let nextView = segue.destination as! ResultsViewController
        nextView.res1 = resultado
        nextView.res2 = resultado2
    }

}

