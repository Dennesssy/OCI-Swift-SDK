import Foundation

// MARK: - DeleteProtectedBranchRequest

public struct DeleteProtectedBranchRequest: Codable, Sendable {
    public var repositoryId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var deleteProtectedBranchDetails: DeleteProtectedBranchDetails?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, ifMatch, opcRequestId, deleteProtectedBranchDetails
    }

    public init(
                repositoryId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                deleteProtectedBranchDetails: DeleteProtectedBranchDetails? = nil
    ) {
        self.repositoryId = repositoryId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.deleteProtectedBranchDetails = deleteProtectedBranchDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteProtectedBranchRequest: CustomStringConvertible {
    public var description: String { "DeleteProtectedBranchRequest()" }
}

// MARK: - DeleteProtectedBranchResponse

public struct DeleteProtectedBranchResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteProtectedBranchResponse: CustomStringConvertible {
    public var description: String { "DeleteProtectedBranchResponse()" }
}