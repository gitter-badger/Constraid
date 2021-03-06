import XCTest
import Constraid

class ManageSizeTests: XCTestCase {

    func testSetWidth() {
        let viewOne = UIView()

        viewOne.setWidth(10.0, priority: 500)
        let constraint = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, NSLayoutAttribute.width)
        XCTAssertEqual(constraint.relation, NSLayoutRelation.equal)
        XCTAssertNil(constraint.secondItem)
        XCTAssertEqual(constraint.secondAttribute, NSLayoutAttribute.notAnAttribute)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, 500)
    }

    func testSetHeight() {
        let viewOne = UIView()

        viewOne.setHeight(10.0, priority: 500)
        let constraint = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, NSLayoutAttribute.height)
        XCTAssertEqual(constraint.relation, NSLayoutRelation.equal)
        XCTAssertNil(constraint.secondItem)
        XCTAssertEqual(constraint.secondAttribute, NSLayoutAttribute.notAnAttribute)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, 500)
    }

    func testMatchWidthOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        viewOne.matchWidth(of: viewTwo, by: 10.0, multiplier: 2.0, priority: 500)
        let constraint = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, NSLayoutAttribute.width)
        XCTAssertEqual(constraint.relation, NSLayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, NSLayoutAttribute.width)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, 500)
    }

    func testMatchHeightOf() {
        let viewOne = UIView()
        let viewTwo = UIView()

        viewOne.addSubview(viewTwo)
        viewOne.matchHeight(of: viewTwo, by: 10.0, multiplier: 2.0, priority: 500)
        let constraint = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, NSLayoutAttribute.height)
        XCTAssertEqual(constraint.relation, NSLayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! UIView, viewTwo)
        XCTAssertEqual(constraint.secondAttribute, NSLayoutAttribute.height)
        XCTAssertEqual(constraint.constant, 10.0)
        XCTAssertEqual(constraint.priority, 500)
    }

    func testMakeSquare() {
        let viewOne = UIView()

        viewOne.makeSquare(priority: 500)
        let constraint = viewOne.constraints.first! as NSLayoutConstraint

        XCTAssertEqual(constraint.firstItem as! UIView, viewOne)
        XCTAssertEqual(constraint.firstAttribute, NSLayoutAttribute.width)
        XCTAssertEqual(constraint.relation, NSLayoutRelation.equal)
        XCTAssertEqual(constraint.secondItem as! UIView, viewOne)
        XCTAssertEqual(constraint.secondAttribute, NSLayoutAttribute.height)
        XCTAssertEqual(constraint.constant, 0.0)
        XCTAssertEqual(constraint.priority, 500)
    }
}
