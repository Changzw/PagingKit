//
//  SwipeCellPriorityScrollView.swift
//  PagingKit
//
//  Created by czw on 4/29/20.
//  Copyright © 2020 Kazuhiro Hayashi. All rights reserved.
//

import UIKit

public class SwipeCellPriorityScrollView: UIScrollView {
}

//https://stackoverflow.com/a/51664906/6103118
extension SwipeCellPriorityScrollView: UIGestureRecognizerDelegate {
  
  public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRequireFailureOf otherGestureRecognizer: UIGestureRecognizer) -> Bool {
    if (otherGestureRecognizer.view != nil && otherGestureRecognizer.view!.superview != nil) {
      return otherGestureRecognizer.view!.superview!.isKind(of: UITableView.self)
    }
    
    return false
  }
  
  public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
    if (gestureRecognizer.state != .possible) {
      return true
    }
    
    return false
  }
  
}
