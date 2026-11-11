import Foundation
import OCICommon

// MARK: - UpdateAddonRequest

public struct UpdateAddonRequest: Codable, Sendable {
    public var kafkaClusterId: String?
    public var addonName: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateAddonDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case kafkaClusterId, addonName, ifMatch, opcRequestId, updateAddonDetails
    }

    public init(
                kafkaClusterId: String? = nil,
                addonName: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateAddonDetails: JSONValue? = nil
    ) {
        self.kafkaClusterId = kafkaClusterId
        self.addonName = addonName
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateAddonDetails = updateAddonDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateAddonRequest: CustomStringConvertible {
    public var description: String { "UpdateAddonRequest()" }
}

// MARK: - UpdateAddonResponse

public struct UpdateAddonResponse: Codable, Sendable {
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var kafkaClusterAddon: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case etag, opcWorkRequestId, opcRequestId, kafkaClusterAddon
    }

    public init(
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                kafkaClusterAddon: JSONValue? = nil
    ) {
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.kafkaClusterAddon = kafkaClusterAddon
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateAddonResponse: CustomStringConvertible {
    public var description: String { "UpdateAddonResponse()" }
}