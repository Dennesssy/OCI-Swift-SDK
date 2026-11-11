import Foundation

// MARK: - MaintenanceExecutionCollection

public struct MaintenanceExecutionCollection: Codable, Sendable {

    public var items: [MaintenanceExecutionSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [MaintenanceExecutionSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MaintenanceExecutionCollection: CustomStringConvertible {
    public var description: String { "MaintenanceExecutionCollection()" }
}