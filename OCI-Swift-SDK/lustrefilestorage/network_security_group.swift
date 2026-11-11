import Foundation

// MARK: - NetworkSecurityGroup

public struct NetworkSecurityGroup: Codable, Sendable {

    public var nsgIds: [String]?

    private enum CodingKeys: String, CodingKey {
        case nsgIds
    }

    public init(
                nsgIds: [String]? = nil
    ) {
        self.nsgIds = nsgIds
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension NetworkSecurityGroup: CustomStringConvertible {
    public var description: String { "NetworkSecurityGroup()" }
}