import Foundation

// MARK: - CreateFixedGpuFleetShapeDetails

public struct CreateFixedGpuFleetShapeDetails: Codable, Sendable {

    public var shapeName: String?
    public var diskSizeInGBs: Int?

    private enum CodingKeys: String, CodingKey {
        case shapeName, diskSizeInGBs
    }

    public init(
                shapeName: String? = nil,
                diskSizeInGBs: Int? = nil
    ) {
        self.shapeName = shapeName
        self.diskSizeInGBs = diskSizeInGBs
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateFixedGpuFleetShapeDetails: CustomStringConvertible {
    public var description: String { "CreateFixedGpuFleetShapeDetails()" }
}