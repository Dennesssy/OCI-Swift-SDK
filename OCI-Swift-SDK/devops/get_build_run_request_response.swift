import Foundation

// MARK: - GetBuildRunRequest

public struct GetBuildRunRequest: Codable, Sendable {
    public var buildRunId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case buildRunId, opcRequestId
    }

    public init(
                buildRunId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.buildRunId = buildRunId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetBuildRunRequest: CustomStringConvertible {
    public var description: String { "GetBuildRunRequest()" }
}

// MARK: - GetBuildRunResponse

public struct GetBuildRunResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var buildRun: BuildRun?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, buildRun
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                buildRun: BuildRun? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.buildRun = buildRun
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetBuildRunResponse: CustomStringConvertible {
    public var description: String { "GetBuildRunResponse()" }
}