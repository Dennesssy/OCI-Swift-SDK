import Foundation

// MARK: - NoneVerificationKeySource

public struct NoneVerificationKeySource: Codable, Sendable {

    public init() {}
}

extension NoneVerificationKeySource: CustomStringConvertible {
    public var description: String { "NoneVerificationKeySource()" }
}