import Foundation

// MARK: - PrivateIp

public struct PrivateIp: Codable, Sendable {

    public init() {}
}

extension PrivateIp: CustomStringConvertible {
    public var description: String { "PrivateIp()" }
}