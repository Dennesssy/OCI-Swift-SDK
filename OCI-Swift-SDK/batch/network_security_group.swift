import Foundation

// MARK: - NetworkSecurityGroup

public struct NetworkSecurityGroup: Codable, Sendable {

    public init() {}
}

extension NetworkSecurityGroup: CustomStringConvertible {
    public var description: String { "NetworkSecurityGroup()" }
}