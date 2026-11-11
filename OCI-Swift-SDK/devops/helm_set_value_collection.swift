import Foundation

// MARK: - HelmSetValueCollection

public struct HelmSetValueCollection: Codable, Sendable {

    public var items: [HelmSetValue]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [HelmSetValue]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension HelmSetValueCollection: CustomStringConvertible {
    public var description: String { "HelmSetValueCollection()" }
}