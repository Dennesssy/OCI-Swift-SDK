import Foundation

// MARK: - DeletePullRequestRequest

public struct DeletePullRequestRequest: Codable, Sendable {
    public var pullRequestId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case pullRequestId, ifMatch, opcRequestId
    }

    public init(
                pullRequestId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.pullRequestId = pullRequestId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeletePullRequestRequest: CustomStringConvertible {
    public var description: String { "DeletePullRequestRequest()" }
}

// MARK: - DeletePullRequestResponse

public struct DeletePullRequestResponse: Codable, Sendable {
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

extension DeletePullRequestResponse: CustomStringConvertible {
    public var description: String { "DeletePullRequestResponse()" }
}