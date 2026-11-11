import Foundation

// MARK: - DeleteRefRequest

public struct DeleteRefRequest: Codable, Sendable {
    public var repositoryId: String?
    public var refName: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, refName, ifMatch, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                refName: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.refName = refName
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteRefRequest: CustomStringConvertible {
    public var description: String { "DeleteRefRequest()" }
}

// MARK: - DeleteRefResponse

public struct DeleteRefResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var sunset: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId, sunset
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                sunset: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.sunset = sunset
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteRefResponse: CustomStringConvertible {
    public var description: String { "DeleteRefResponse()" }
}