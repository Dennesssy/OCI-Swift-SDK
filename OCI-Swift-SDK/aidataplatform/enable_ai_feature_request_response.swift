import Foundation

// MARK: - EnableAiFeatureRequest

public struct EnableAiFeatureRequest: Codable, Sendable {
    public var aiDataPlatformId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var enableAiFeatureDetails: EnableAiFeatureDetails?

    private enum CodingKeys: String, CodingKey {
        case aiDataPlatformId, ifMatch, opcRequestId, enableAiFeatureDetails
    }

    public init(
                aiDataPlatformId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                enableAiFeatureDetails: EnableAiFeatureDetails? = nil
    ) {
        self.aiDataPlatformId = aiDataPlatformId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.enableAiFeatureDetails = enableAiFeatureDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension EnableAiFeatureRequest: CustomStringConvertible {
    public var description: String { "EnableAiFeatureRequest()" }
}

// MARK: - EnableAiFeatureResponse

public struct EnableAiFeatureResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension EnableAiFeatureResponse: CustomStringConvertible {
    public var description: String { "EnableAiFeatureResponse()" }
}