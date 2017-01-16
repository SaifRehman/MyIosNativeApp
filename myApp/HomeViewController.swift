import UIKit
import Foundation
class HomeViewController: UIViewController {
    @IBOutlet weak var InfoContainer: UIView!
    @IBOutlet weak var SellContainer: UIView!
    @IBOutlet weak var BuyContainer: UIView!
    override func viewDidLoad() {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    @IBAction func SegmentFunction(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            UIView.animate(withDuration: 0.5, animations: {
                self.InfoContainer.alpha = 1
                self.SellContainer.alpha = 0
                self.BuyContainer.alpha = 0
            })
        } else if sender.selectedSegmentIndex == 1  {
            UIView.animate(withDuration: 0.5, animations: {
                self.InfoContainer.alpha = 0
                self.SellContainer.alpha = 1
                self.BuyContainer.alpha = 0
            })
    }
        else if sender.selectedSegmentIndex == 2
        {
            UIView.animate(withDuration: 0.5, animations: {
                self.InfoContainer.alpha = 0
                self.SellContainer.alpha = 0
                self.BuyContainer.alpha = 1
            })
        }
    }
}
