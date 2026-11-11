import Foundation

// MARK: - CreateCpuShapeTaskProfileExtendedInformationDetails

public struct CreateCpuShapeTaskProfileExtendedInformationDetails: Codable, Sendable {

    public var shapeName: String?

    private enum CodingKeys: String, CodingKey {
        case shapeName
    }

    public init(
                shapeName: String? = nil
    ) {
        self.shapeName = shapeName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateCpuShapeTaskProfileExtendedInformationDetails: CustomStringConvertible {
    public var description: String { "CreateCpuShapeTaskProfileExtendedInformationDetails()" }
}