import Foundation

// MARK: - UninstallAddonRequest

public struct UninstallAddonRequest: Codable, Sendable {
    public var kafkaClusterId: String?
    public var addonName: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case kafkaClusterId, addonName, ifMatch, opcRequestId
    }

    public init(
                kafkaClusterId: String? = nil,
                addonName: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.kafkaClusterId = kafkaClusterId
        self.addonName = addonName
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UninstallAddonRequest: CustomStringConvertible {
    public var description: String { "UninstallAddonRequest()" }
}

// MARK: - UninstallAddonResponse

public struct UninstallAddonResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UninstallAddonResponse: CustomStringConvertible {
    public var description: String { "UninstallAddonResponse()" }
}