import Foundation

// MARK: - ApexDataAccessDetails

public struct ApexDataAccessDetails: Codable, Sendable {

    public var dbWorkspaceAdminInitialPassword: String?

    private enum CodingKeys: String, CodingKey {
        case dbWorkspaceAdminInitialPassword
    }

    public init(
                dbWorkspaceAdminInitialPassword: String? = nil
    ) {
        self.dbWorkspaceAdminInitialPassword = dbWorkspaceAdminInitialPassword
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApexDataAccessDetails: CustomStringConvertible {
    public var description: String { "ApexDataAccessDetails()" }
}