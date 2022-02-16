//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by 김동준 on 2022/02/15.
//

import Foundation
import UIKit

class YellowViewController: UIViewController{
    
    @IBOutlet weak var closeButton: UIButton!
    
    private lazy var greenVC = storyboard?.instantiateViewController(withIdentifier: "GreenVC")
    
    override func loadView() {
        super.loadView()
        print("\(self.classForKeyedArchiver!) loadView")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(self.classForKeyedArchiver!) viewDidLoad")
        setViewSetting(color: .yellow, btn: self.closeButton)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("\(self.classForKeyedArchiver!) viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("\(self.classForKeyedArchiver!) viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("\(self.classForKeyedArchiver!) viewWillDisAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("\(self.classForKeyedArchiver!) viewDidDisAppear")
    }
    
    @IBAction func openButtonTouched(_ sender: Any) {
        guard let greenVC = greenVC else {
            return
        }
        self.present(greenVC, animated: true, completion: nil)
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

extension UIViewController{
    func setViewSetting(color: UIColor,btn: UIButton){
        view.backgroundColor = color
        btn.setTitle("close", for: .normal)
    }
}
