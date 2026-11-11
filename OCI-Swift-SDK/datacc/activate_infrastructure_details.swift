import Foundation

// MARK: - ActivateInfrastructureDetails

public struct ActivateInfrastructureDetails: Codable, Sendable {

    public var activationZipFile: Data

    private enum CodingKeys: String, CodingKey {
        case activationZipFile
    }

    public init(
                activationZipFile: Data
    ) {
        self.activationZipFile = activationZipFile
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ActivateInfrastructureDetails: CustomStringConvertible {
    public var description: String { "ActivateInfrastructureDetails()" }
}