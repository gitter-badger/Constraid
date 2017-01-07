import UIKit

extension UIView {
    open func centerVertically(withinMarginsOf item: Any?, constant: CGFloat = 0.0,
                               multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .centerY, relatedBy: .equal,
                               toItem: item, attribute: .centerYWithinMargins,
                               multiplier: multiplier, constant: constant, priority: priority)
            ])
    }

    open func centerHorizontally(withinMarginsOf item: Any?, constant: CGFloat = 0.0,
                                 multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: .centerX, relatedBy: .equal,
                               toItem: item, attribute: .centerXWithinMargins,
                               multiplier: multiplier, constant: constant, priority: priority)
            ])
    }

    open func center(withinMarginsOf item: Any?, constant: CGFloat = 0.0,
                     multiplier: CGFloat = 1.0, priority: UILayoutPriority = UILayoutPriorityRequired) {

        self.centerHorizontally(withinMarginsOf: item, constant: constant,
                                multiplier: multiplier, priority: priority)
        self.centerVertically(withinMarginsOf: item, constant: constant,
                              multiplier: multiplier, priority: priority)
    }
}