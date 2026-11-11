import Foundation

// MARK: - PrincipalDetails

public struct PrincipalDetails: Codable, Sendable {

    public var principalId: String?
    public var principalName: String?
    public var principalType: PrincipalDetailsPrincipalTypeEnum?
    public var principalState: PrincipalDetailsPrincipalStateEnum?

    private enum CodingKeys: String, CodingKey {
        case principalId, principalName, principalType, principalState
    }

    public init(
                principalId: String? = nil,
                principalName: String? = nil,
                principalType: PrincipalDetailsPrincipalTypeEnum? = nil,
                principalState: PrincipalDetailsPrincipalStateEnum? = nil
    ) {
        self.principalId = principalId
        self.principalName = principalName
        self.principalType = principalType
        self.principalState = principalState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PrincipalDetails: CustomStringConvertible {
    public var description: String { "PrincipalDetails()" }
}