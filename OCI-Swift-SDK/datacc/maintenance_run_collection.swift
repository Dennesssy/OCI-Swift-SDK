import Foundation

// MARK: - MaintenanceRunCollection

public struct MaintenanceRunCollection: Codable, Sendable {

    public var items: [MaintenanceRunSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [MaintenanceRunSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MaintenanceRunCollection: CustomStringConvertible {
    public var description: String { "MaintenanceRunCollection()" }
}