//
//  DisponiblesViewController.swift
//  AppDocencia23
//
//  Created by Ivan Gabriel on 21/04/23.
//

import UIKit

class DisponiblesViewController: UIViewController {
    @IBOutlet weak var sideMenuBtn: UIBarButtonItem!;   override func viewDidLoad() {
        super.viewDidLoad()
        sideMenuBtn.target = revealViewController()
                sideMenuBtn.action = #selector(revealViewController()?.revealSideMenu)        // Do any additional setup after loading the view.
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
