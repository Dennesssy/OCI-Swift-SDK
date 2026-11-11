import Foundation

// MARK: - CreateGpuShapeTaskProfileExtendedInformationDetails

public struct CreateGpuShapeTaskProfileExtendedInformationDetails: Codable, Sendable {

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

extension CreateGpuShapeTaskProfileExtendedInformationDetails: CustomStringConvertible {
    public var description: String { "CreateGpuShapeTaskProfileExtendedInformationDetails()" }
}