//
//  ViewController.swift
//  touch event
//
//  Created by Kano on 2021/10/22.
//

import UIKit

class ViewController: UIViewController, UIImagePickerController, UINavigationControllerDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch: UITouch = touches.first!
        let location: CGPoint = touch.location(in: self.view)
        print("タッチした位置（\(location.x) , \(location.y))")
    }
    
    var imagePickerController: UIImagePickerController =
    UIImagePickerController()
    
    imagePickerController.sourceType = UIImagePickerController.SourceType.PhotoLibrary
    
    imagePickerController.allowsEditing = true
    
    self.present(imagePickerController, animated: true, completion: nil)
    
    
    imagePickerController.delegate = self
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediawithInfo into: [UIImagePickerController.InfoKey : Any]){
        let image = info[.originalImage] as? UIImage
        
        haikeiImageView.image = image
        
        self.dismiss(animated: true, completion: nil)
    }
    
}



}

