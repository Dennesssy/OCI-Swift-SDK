import Foundation

// MARK: - CountBasedApprovalPolicy

public struct CountBasedApprovalPolicy: Codable, Sendable {

    public var numberOfApprovalsRequired: Int?

    private enum CodingKeys: String, CodingKey {
        case numberOfApprovalsRequired
    }

    public init(
                numberOfApprovalsRequired: Int? = nil
    ) {
        self.numberOfApprovalsRequired = numberOfApprovalsRequired
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CountBasedApprovalPolicy: CustomStringConvertible {
    public var description: String { "CountBasedApprovalPolicy()" }
}