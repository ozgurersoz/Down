//
//  Item.swift
//  Down
//
//  Created by John Nguyen on 09.04.19.
//

import Foundation
import libcmark

public class Item: Node {
    
    public var cmarkNode: CMarkNode
    
    public var debugDescription: String { return "Item" }
    
    init?(cmarkNode: CMarkNode) {
        guard cmarkNode.type == CMARK_NODE_ITEM else { return nil }
        self.cmarkNode = cmarkNode
    }
}