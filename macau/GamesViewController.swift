import UIKit
import ChameleonFramework

class GamesViewController: UIViewController {
    
    @IBOutlet weak var ojisanButton: UIButton!
    var b: CGRect! = nil
    
    override func viewDidLoad() {
        self.navigationItem.title = "ゲーム"
        //後で画像を作成して差し替える
        self.view.backgroundColor = HexColor(hexString: "#F2F7FF")
        setUpButtons()
        super.viewDidLoad()
    }
    internal func setUpButtons() {
        ojisanButton.backgroundColor = HexColor(hexString: "#0B409C")
        ojisanButton.titleLabel?.textColor = ContrastColorOf(backgroundColor: HexColor(hexString: "#0B409C"), returnFlat: true)
        ojisanButton.titleLabel?.text = "おじさん"
        ojisanButton.layer.masksToBounds = true
        ojisanButton.layer.cornerRadius = 20.0
        ojisanButton.reversesTitleShadowWhenHighlighted = false
        ojisanButton.addTarget(self, action: #selector(self.onTouchDownOjisan(_:)), for: .touchDown)
        ojisanButton.addTarget(self, action: #selector(self.onTouchUpInsideOjisan(_:)), for: .touchUpInside)
        self.b = self.ojisanButton.bounds
    }
    
    internal func onTouchDownOjisan(_ sender: UIButton) {
        self.ojisanButton.bounds = CGRect(x: b.origin.x, y: b.origin.y, width: b.size.width * 1.05, height: b.size.height * 1.05)
        self.ojisanButton.backgroundColor = self.ojisanButton.backgroundColor?.lighten(byPercentage: 0.1)
    }
    
    internal func onTouchUpInsideOjisan(_ sender: UIButton) {
        self.ojisanButton.bounds = CGRect(x: b.origin.x, y: b.origin.y, width: b.size.width, height: b.size.height)
        self.ojisanButton.backgroundColor = HexColor(hexString: "#0B409C")
        let ojisanViewController = OjisanViewController()
        self.navigationController?.pushViewController(ojisanViewController, animated: true)
    }
}
