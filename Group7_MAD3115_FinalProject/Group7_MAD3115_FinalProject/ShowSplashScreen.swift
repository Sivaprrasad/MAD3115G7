//
//  ShowSplashScreen.swift
//  Parking Space Booking System
//
//  Created by  Z Angrazy Jatt on 2018-11-03.
//  Copyright © 2018  Z Angrazy Jatt. All rights reserved.
//

import UIKit

class ShowSplashScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       DispatchQueue.main.asyncAfter(deadline: .now() + 5)
       {
        let sb = UIStoryboard(name: "Main", bundle: nil)
       let navMain = sb.instantiateViewController(withIdentifier: "LoginView")
        self.present(navMain , animated: true, completion: nil)
        
        }
        

    }
    

   /* override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }*/
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
