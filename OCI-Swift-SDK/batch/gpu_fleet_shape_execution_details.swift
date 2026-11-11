import Foundation

// MARK: - GpuFleetShapeExecutionDetails

public struct GpuFleetShapeExecutionDetails: Codable, Sendable {

    public var shapeName: String?
    public var ocpus: Int?
    public var memoryInGBs: Int?
    public var diskSizeInGBs: Int?
    public var gpus: Int?

    private enum CodingKeys: String, CodingKey {
        case shapeName, ocpus, memoryInGBs, diskSizeInGBs, gpus
    }

    public init(
                shapeName: String? = nil,
                ocpus: Int? = nil,
                memoryInGBs: Int? = nil,
                diskSizeInGBs: Int? = nil,
                gpus: Int? = nil
    ) {
        self.shapeName = shapeName
        self.ocpus = ocpus
        self.memoryInGBs = memoryInGBs
        self.diskSizeInGBs = diskSizeInGBs
        self.gpus = gpus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GpuFleetShapeExecutionDetails: CustomStringConvertible {
    public var description: String { "GpuFleetShapeExecutionDetails()" }
}