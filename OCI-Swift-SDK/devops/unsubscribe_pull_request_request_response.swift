import Foundation

// MARK: - UnsubscribePullRequestRequest

public struct UnsubscribePullRequestRequest: Codable, Sendable {
    public var pullRequestId: String?
    public var token: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case pullRequestId, token, ifMatch, opcRequestId
    }

    public init(
                pullRequestId: String? = nil,
                token: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.pullRequestId = pullRequestId
        self.token = token
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UnsubscribePullRequestRequest: CustomStringConvertible {
    public var description: String { "UnsubscribePullRequestRequest()" }
}

// MARK: - UnsubscribePullRequestResponse

public struct UnsubscribePullRequestResponse: Codable, Sendable {
    public var content: Data?
    public var contentLocation: String?
    public var etag: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case content, contentLocation, etag, opcRequestId
    }

    public init(
                content: Data? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.content = content
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UnsubscribePullRequestResponse: CustomStringConvertible {
    public var description: String { "UnsubscribePullRequestResponse()" }
}