import Foundation

// MARK: - UpdateManagedInstanceDetails

public struct UpdateManagedInstanceDetails: Codable, Sendable {

    public var configuration: UpdateManagedInstanceConfigurationDetails?

    private enum CodingKeys: String, CodingKey {
        case configuration
    }

    public init(
                configuration: UpdateManagedInstanceConfigurationDetails? = nil
    ) {
        self.configuration = configuration
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateManagedInstanceDetails: CustomStringConvertible {
    public var description: String { "UpdateManagedInstanceDetails()" }
}