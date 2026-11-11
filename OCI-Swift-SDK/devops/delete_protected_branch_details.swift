import Foundation

// MARK: - DeleteProtectedBranchDetails

public struct DeleteProtectedBranchDetails: Codable, Sendable {

    public var branchName: String?

    private enum CodingKeys: String, CodingKey {
        case branchName
    }

    public init(
                branchName: String? = nil
    ) {
        self.branchName = branchName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteProtectedBranchDetails: CustomStringConvertible {
    public var description: String { "DeleteProtectedBranchDetails()" }
}