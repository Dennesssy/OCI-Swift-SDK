import Foundation

// MARK: - CreateCpuArchitectureTaskProfileExtendedInformationDetails

public struct CreateCpuArchitectureTaskProfileExtendedInformationDetails: Codable, Sendable {

    public var architecture: CreateCpuArchitectureTaskProfileExtendedInformationDetailsArchitectureEnum

    private enum CodingKeys: String, CodingKey {
        case architecture
    }

    public init(
                architecture: CreateCpuArchitectureTaskProfileExtendedInformationDetailsArchitectureEnum
    ) {
        self.architecture = architecture
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateCpuArchitectureTaskProfileExtendedInformationDetails: CustomStringConvertible {
    public var description: String { "CreateCpuArchitectureTaskProfileExtendedInformationDetails()" }
}