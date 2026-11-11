import Foundation
import OCICommon

// MARK: - GetAddonRequest

public struct GetAddonRequest: Codable, Sendable {
    public var kafkaClusterId: String?
    public var addonName: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case kafkaClusterId, addonName, opcRequestId
    }

    public init(
                kafkaClusterId: String? = nil,
                addonName: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.kafkaClusterId = kafkaClusterId
        self.addonName = addonName
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetAddonRequest: CustomStringConvertible {
    public var description: String { "GetAddonRequest()" }
}

// MARK: - GetAddonResponse

public struct GetAddonResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var kafkaClusterAddon: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, kafkaClusterAddon
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                kafkaClusterAddon: JSONValue? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.kafkaClusterAddon = kafkaClusterAddon
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetAddonResponse: CustomStringConvertible {
    public var description: String { "GetAddonResponse()" }
}