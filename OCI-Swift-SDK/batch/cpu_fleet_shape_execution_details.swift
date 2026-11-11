import Foundation

// MARK: - CpuFleetShapeExecutionDetails

public struct CpuFleetShapeExecutionDetails: Codable, Sendable {

    public var shapeName: String?
    public var ocpus: Int?
    public var memoryInGBs: Int?
    public var diskSizeInGBs: Int?

    private enum CodingKeys: String, CodingKey {
        case shapeName, ocpus, memoryInGBs, diskSizeInGBs
    }

    public init(
                shapeName: String? = nil,
                ocpus: Int? = nil,
                memoryInGBs: Int? = nil,
                diskSizeInGBs: Int? = nil
    ) {
        self.shapeName = shapeName
        self.ocpus = ocpus
        self.memoryInGBs = memoryInGBs
        self.diskSizeInGBs = diskSizeInGBs
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CpuFleetShapeExecutionDetails: CustomStringConvertible {
    public var description: String { "CpuFleetShapeExecutionDetails()" }
}