//
//  ResultsViewController.swift
//  Calculador de Propina
//
//  Created by Teté on 24/08/23.
//

import UIKit

class ResultsViewController: UIViewController {


    
    @IBOutlet weak var resultadoTotal: UILabel!
    var res1:Double = 0
    
    @IBOutlet weak var resultadoPC: UILabel!
    var res2:Double = 0
    
    override func viewWillAppear(_ animated: Bool) {
        resultadoTotal.text=String(format: "%.3f", res1)
        resultadoPC.text=String(format: "%.3f", res2)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
