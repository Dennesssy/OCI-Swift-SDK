import Foundation

// MARK: - UpdatePropertySetApexFaIntegrationDetails

public struct UpdatePropertySetApexFaIntegrationDetails: Codable, Sendable {

    public var authenticationSubstitutions: [String: String]?
    public var instanceDbmsCredentialEnabled: String?

    private enum CodingKeys: String, CodingKey {
        case authenticationSubstitutions, instanceDbmsCredentialEnabled
    }

    public init(
                authenticationSubstitutions: [String: String]? = nil,
                instanceDbmsCredentialEnabled: String? = nil
    ) {
        self.authenticationSubstitutions = authenticationSubstitutions
        self.instanceDbmsCredentialEnabled = instanceDbmsCredentialEnabled
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdatePropertySetApexFaIntegrationDetails: CustomStringConvertible {
    public var description: String { "UpdatePropertySetApexFaIntegrationDetails()" }
}