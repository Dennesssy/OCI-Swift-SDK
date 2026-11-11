import Foundation
import OCICommon

// MARK: - InstallAddonRequest

public struct InstallAddonRequest: Codable, Sendable {
    public var kafkaClusterId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var installAddonDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case kafkaClusterId, opcRequestId, ifMatch, installAddonDetails
    }

    public init(
                kafkaClusterId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                installAddonDetails: JSONValue? = nil
    ) {
        self.kafkaClusterId = kafkaClusterId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.installAddonDetails = installAddonDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension InstallAddonRequest: CustomStringConvertible {
    public var description: String { "InstallAddonRequest()" }
}

// MARK: - InstallAddonResponse

public struct InstallAddonResponse: Codable, Sendable {
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

extension InstallAddonResponse: CustomStringConvertible {
    public var description: String { "InstallAddonResponse()" }
}