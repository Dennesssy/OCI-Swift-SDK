import Foundation

// MARK: - OverrideMaintenanceDetails

public struct OverrideMaintenanceDetails: Codable, Sendable {

    public var dateTimeDetails: DateAndTime?

    private enum CodingKeys: String, CodingKey {
        case dateTimeDetails
    }

    public init(
                dateTimeDetails: DateAndTime? = nil
    ) {
        self.dateTimeDetails = dateTimeDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OverrideMaintenanceDetails: CustomStringConvertible {
    public var description: String { "OverrideMaintenanceDetails()" }
}