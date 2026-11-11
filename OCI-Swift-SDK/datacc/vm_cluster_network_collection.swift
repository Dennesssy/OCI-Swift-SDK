import Foundation

// MARK: - VmClusterNetworkCollection

public struct VmClusterNetworkCollection: Codable, Sendable {

    public var items: [VmClusterNetworkSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [VmClusterNetworkSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension VmClusterNetworkCollection: CustomStringConvertible {
    public var description: String { "VmClusterNetworkCollection()" }
}