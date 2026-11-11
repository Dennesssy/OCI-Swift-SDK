import Foundation

// MARK: - ScaleInfrastructureStorageDetails

public struct ScaleInfrastructureStorageDetails: Codable, Sendable {

    public var ssdConfigurationRequested: ShapeEnumEnum?

    private enum CodingKeys: String, CodingKey {
        case ssdConfigurationRequested
    }

    public init(
                ssdConfigurationRequested: ShapeEnumEnum? = nil
    ) {
        self.ssdConfigurationRequested = ssdConfigurationRequested
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ScaleInfrastructureStorageDetails: CustomStringConvertible {
    public var description: String { "ScaleInfrastructureStorageDetails()" }
}