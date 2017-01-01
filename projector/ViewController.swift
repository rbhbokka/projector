//
//  ViewController.swift
//  projector
//
//  Created by Kiryl Yemelyanenka on 10/24/16.
//  Copyright © 2016 rbhbokka. All rights reserved.
//

import UIKit
import ALCameraViewController

class ViewController: UIViewController {
    
    var croppingEnabled: Bool = false
    var libraryEnabled: Bool = false
    
    
    @IBOutlet weak var camView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //var error : NSError?
    }

   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func openCamera(_ sender: UIButton) {
        
        let cameraViewController = CameraViewController(croppingEnabled: croppingEnabled, allowsLibraryAccess: libraryEnabled) { [weak self] image, asset in
            self?.camView.image = image
            self?.dismiss(animated: false, completion: nil)
        }
        
        present(cameraViewController, animated: false, completion: nil)
    }

}

