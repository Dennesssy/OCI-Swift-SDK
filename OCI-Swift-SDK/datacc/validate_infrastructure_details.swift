import Foundation

// MARK: - ValidateInfrastructureDetails

public struct ValidateInfrastructureDetails: Codable, Sendable {

    public var validationZipFile: Data

    private enum CodingKeys: String, CodingKey {
        case validationZipFile
    }

    public init(
                validationZipFile: Data
    ) {
        self.validationZipFile = validationZipFile
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ValidateInfrastructureDetails: CustomStringConvertible {
    public var description: String { "ValidateInfrastructureDetails()" }
}