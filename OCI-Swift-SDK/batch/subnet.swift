import Foundation

// MARK: - Subnet

public struct Subnet: Codable, Sendable {

    public init() {}
}

extension Subnet: CustomStringConvertible {
    public var description: String { "Subnet()" }
}