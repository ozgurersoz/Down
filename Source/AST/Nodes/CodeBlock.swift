//
//  CodeBlock.swift
//  Down
//
//  Created by John Nguyen on 09.04.19.
//

import Foundation
import libcmark

public class CodeBlock: BaseNode {
    
    /// The code content, if present.
    public var literal: String? { return cmarkNode.literal }
    
    /// The fence info is an optional string that trails the opening sequence of backticks.
    /// It can be used to provide some contextual information about the block, such as
    /// the name of a programming language.
    ///
    /// For example:
    /// ```
    /// '''<fence info>
    /// <literal>
    /// '''
    /// ```
    ///
    public lazy var fenceInfo: String? = cmarkNode.fenceInfo
    
}


// MARK: - Debug

extension CodeBlock: CustomDebugStringConvertible {
    
    public var debugDescription: String {
        return "Code Block - \(literal ?? "nil"), fenceInfo: \(fenceInfo ?? "nil")"
    }
}
