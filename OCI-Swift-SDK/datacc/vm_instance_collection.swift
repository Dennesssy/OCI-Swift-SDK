import Foundation

// MARK: - VmInstanceCollection

public struct VmInstanceCollection: Codable, Sendable {

    public var items: [VmInstanceSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [VmInstanceSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension VmInstanceCollection: CustomStringConvertible {
    public var description: String { "VmInstanceCollection()" }
}