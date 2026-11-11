import Foundation

// MARK: - PropertySetApexFaIntegration

public struct PropertySetApexFaIntegration: Codable, Sendable {

    public var isMutable: Bool?
    public var authenticationSubstitutions: [String: String]?
    public var instanceDbmsCredentialEnabled: String?
    public var prerequisitesCheck: ApexFaIntegrationPrerequisitesCheck?

    private enum CodingKeys: String, CodingKey {
        case isMutable, authenticationSubstitutions, instanceDbmsCredentialEnabled, prerequisitesCheck
    }

    public init(
                isMutable: Bool? = nil,
                authenticationSubstitutions: [String: String]? = nil,
                instanceDbmsCredentialEnabled: String? = nil,
                prerequisitesCheck: ApexFaIntegrationPrerequisitesCheck? = nil
    ) {
        self.isMutable = isMutable
        self.authenticationSubstitutions = authenticationSubstitutions
        self.instanceDbmsCredentialEnabled = instanceDbmsCredentialEnabled
        self.prerequisitesCheck = prerequisitesCheck
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PropertySetApexFaIntegration: CustomStringConvertible {
    public var description: String { "PropertySetApexFaIntegration()" }
}