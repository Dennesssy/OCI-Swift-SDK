import Foundation
import OCICommon

// MARK: - OciOpenSearchIndexConfig

public struct OciOpenSearchIndexConfig: Codable, Sendable {

    public var clusterId: String?
    public var secretDetail: JSONValue
    public var indexes: [Index]

    private enum CodingKeys: String, CodingKey {
        case clusterId, secretDetail, indexes
    }

    public init(
                clusterId: String? = nil,
                secretDetail: JSONValue,
                indexes: [Index]
    ) {
        self.clusterId = clusterId
        self.secretDetail = secretDetail
        self.indexes = indexes
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OciOpenSearchIndexConfig: CustomStringConvertible {
    public var description: String { "OciOpenSearchIndexConfig()" }
}