import UIKit

class FrostyTabBar: UITabBar {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let frost = UIVisualEffectView(effect: UIBlurEffect(style: .light))
        frost.frame = self.bounds
        frost.autoresizingMask = .flexibleWidth
        self.insertSubview(frost, at: 0)
    }
}
