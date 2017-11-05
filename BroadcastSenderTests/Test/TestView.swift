//
//  TestView.swift
//  BroadcastSenderTests
//
//  Created by Alex Antonyuk on 11/5/17.
//  Copyright © 2017 Alex Antonyuk. All rights reserved.
//

import UIKit
@testable import BroadcastSender

@objc protocol TestViewActions: class {
	func testViewMegaAction(_ sender: TestView, event: TestEvent)
}

final class TestView: UIView, BroadcastSender {

	let button = UIButton()

	override init(frame: CGRect) {
		super.init(frame: frame)

		addSubview(button)
		button.addTarget(self, action: #selector(onButtonTap(_:)), for: .touchUpInside)
	}

	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	@objc private func onButtonTap(_ sender: UIButton) {
		send(selector: #selector(TestViewActions.testViewMegaAction(_:event:)), event: TestEvent(value: "LolKek"))
	}

}
