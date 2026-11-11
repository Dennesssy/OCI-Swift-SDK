import Foundation

// MARK: - OciObjectStorageDataSourceConfig

public struct OciObjectStorageDataSourceConfig: Codable, Sendable {

    public var shouldEnableMultiModality: Bool?
    public var objectStoragePrefixes: [ObjectStoragePrefix]?

    private enum CodingKeys: String, CodingKey {
        case shouldEnableMultiModality, objectStoragePrefixes
    }

    public init(
                shouldEnableMultiModality: Bool? = nil,
                objectStoragePrefixes: [ObjectStoragePrefix]? = nil
    ) {
        self.shouldEnableMultiModality = shouldEnableMultiModality
        self.objectStoragePrefixes = objectStoragePrefixes
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OciObjectStorageDataSourceConfig: CustomStringConvertible {
    public var description: String { "OciObjectStorageDataSourceConfig()" }
}