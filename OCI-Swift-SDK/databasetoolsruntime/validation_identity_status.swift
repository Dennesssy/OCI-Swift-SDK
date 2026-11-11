import Foundation

// MARK: - ValidationIdentityStatus

public struct ValidationIdentityStatus: Codable, Sendable {

    public var type: IdentityTypeEnum?
    public var status: DatabaseToolsIdentityStatusEnum?
    public var statusDetails: String?

    private enum CodingKeys: String, CodingKey {
        case type, status, statusDetails
    }

    public init(
                type: IdentityTypeEnum? = nil,
                status: DatabaseToolsIdentityStatusEnum? = nil,
                statusDetails: String? = nil
    ) {
        self.type = type
        self.status = status
        self.statusDetails = statusDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ValidationIdentityStatus: CustomStringConvertible {
    public var description: String { "ValidationIdentityStatus()" }
}