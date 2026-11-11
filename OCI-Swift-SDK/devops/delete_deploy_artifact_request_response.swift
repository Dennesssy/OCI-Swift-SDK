import Foundation

// MARK: - DeleteDeployArtifactRequest

public struct DeleteDeployArtifactRequest: Codable, Sendable {
    public var deployArtifactId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case deployArtifactId, ifMatch, opcRequestId
    }

    public init(
                deployArtifactId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.deployArtifactId = deployArtifactId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDeployArtifactRequest: CustomStringConvertible {
    public var description: String { "DeleteDeployArtifactRequest()" }
}

// MARK: - DeleteDeployArtifactResponse

public struct DeleteDeployArtifactResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDeployArtifactResponse: CustomStringConvertible {
    public var description: String { "DeleteDeployArtifactResponse()" }
}