import UIKit
import ChameleonFramework

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        self.tabBar.barTintColor = FlatYellow()
        self.tabBar.tintColor = ContrastColorOf(backgroundColor: FlatYellow(), returnFlat: true)
        self.tabBar.items?[0].title = "ゲーム"
        self.tabBar.items?[1].title = "席がえ"
        self.tabBar.items?[2].title = "ペア決め"
        self.tabBar.items?[3].title = "設定"
        self.tabBar.items?[0].image = UIImage(named: "favor")
        self.tabBar.items?[1].image = UIImage(named: "favor")
        self.tabBar.items?[2].image = UIImage(named: "favor")
        self.tabBar.items?[3].image = UIImage(named: "setting")
        super.viewDidLoad()
    }
}
