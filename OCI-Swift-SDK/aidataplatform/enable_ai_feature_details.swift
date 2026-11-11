import Foundation

// MARK: - EnableAiFeatureDetails

public struct EnableAiFeatureDetails: Codable, Sendable {

    public var vectorDbId: String?
    public var vectorDbAdminCred: String?
    public var vectorDbAdminSecretId: String?

    private enum CodingKeys: String, CodingKey {
        case vectorDbId, vectorDbAdminCred, vectorDbAdminSecretId
    }

    public init(
                vectorDbId: String? = nil,
                vectorDbAdminCred: String? = nil,
                vectorDbAdminSecretId: String? = nil
    ) {
        self.vectorDbId = vectorDbId
        self.vectorDbAdminCred = vectorDbAdminCred
        self.vectorDbAdminSecretId = vectorDbAdminSecretId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension EnableAiFeatureDetails: CustomStringConvertible {
    public var description: String { "EnableAiFeatureDetails()" }
}