import Foundation

// MARK: - AvailableOverrideMaintenanceStartTimeCollection

public struct AvailableOverrideMaintenanceStartTimeCollection: Codable, Sendable {

    public var items: [AvailableOverrideMaintenanceStartTimeSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [AvailableOverrideMaintenanceStartTimeSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AvailableOverrideMaintenanceStartTimeCollection: CustomStringConvertible {
    public var description: String { "AvailableOverrideMaintenanceStartTimeCollection()" }
}