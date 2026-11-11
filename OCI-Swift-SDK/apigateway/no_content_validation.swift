import Foundation

// MARK: - NoContentValidation

public struct NoContentValidation: Codable, Sendable {

    public init() {}
}

extension NoContentValidation: CustomStringConvertible {
    public var description: String { "NoContentValidation()" }
}