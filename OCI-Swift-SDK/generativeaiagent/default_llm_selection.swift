import Foundation

// MARK: - DefaultLlmSelection

public struct DefaultLlmSelection: Codable, Sendable {

    public init() {}
}

extension DefaultLlmSelection: CustomStringConvertible {
    public var description: String { "DefaultLlmSelection()" }
}