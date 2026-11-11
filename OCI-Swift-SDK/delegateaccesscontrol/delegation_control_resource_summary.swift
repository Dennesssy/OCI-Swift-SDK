import Foundation

// MARK: - DelegationControlResourceSummary

public struct DelegationControlResourceSummary: Codable, Sendable {

    public var id: String?
    public var resourceStatus: DelegationControlResourceSummaryResourceStatusEnum?

    private enum CodingKeys: String, CodingKey {
        case id, resourceStatus
    }

    public init(
                id: String? = nil,
                resourceStatus: DelegationControlResourceSummaryResourceStatusEnum? = nil
    ) {
        self.id = id
        self.resourceStatus = resourceStatus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DelegationControlResourceSummary: CustomStringConvertible {
    public var description: String { "DelegationControlResourceSummary()" }
}