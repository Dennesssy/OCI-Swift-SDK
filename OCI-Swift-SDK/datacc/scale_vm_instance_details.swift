import Foundation

// MARK: - ScaleVmInstanceDetails

public struct ScaleVmInstanceDetails: Codable, Sendable {

    public var memorySizeInGBs: Double?
    public var cpusEnabled: Int?

    private enum CodingKeys: String, CodingKey {
        case memorySizeInGBs, cpusEnabled
    }

    public init(
                memorySizeInGBs: Double? = nil,
                cpusEnabled: Int? = nil
    ) {
        self.memorySizeInGBs = memorySizeInGBs
        self.cpusEnabled = cpusEnabled
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ScaleVmInstanceDetails: CustomStringConvertible {
    public var description: String { "ScaleVmInstanceDetails()" }
}