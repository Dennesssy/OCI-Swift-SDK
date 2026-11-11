import Foundation

// MARK: - ApexFaIntegrationPrerequisitesCheck

public struct ApexFaIntegrationPrerequisitesCheck: Codable, Sendable {

    public var status: ApexFaIntegrationPrerequisitesCheckStatusEnum?
    public var statusDetails: [String]?

    private enum CodingKeys: String, CodingKey {
        case status, statusDetails
    }

    public init(
                status: ApexFaIntegrationPrerequisitesCheckStatusEnum? = nil,
                statusDetails: [String]? = nil
    ) {
        self.status = status
        self.statusDetails = statusDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApexFaIntegrationPrerequisitesCheck: CustomStringConvertible {
    public var description: String { "ApexFaIntegrationPrerequisitesCheck()" }
}