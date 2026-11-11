import Foundation

// MARK: - GetMirrorRecordRequest

public struct GetMirrorRecordRequest: Codable, Sendable {
    public var repositoryId: String?
    public var mirrorRecordType: GetMirrorRecordMirrorRecordTypeEnum
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, mirrorRecordType, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                mirrorRecordType: GetMirrorRecordMirrorRecordTypeEnum,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.mirrorRecordType = mirrorRecordType
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetMirrorRecordRequest: CustomStringConvertible {
    public var description: String { "GetMirrorRecordRequest()" }
}

// MARK: - GetMirrorRecordResponse

public struct GetMirrorRecordResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var repositoryMirrorRecord: RepositoryMirrorRecord?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, repositoryMirrorRecord
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                repositoryMirrorRecord: RepositoryMirrorRecord? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.repositoryMirrorRecord = repositoryMirrorRecord
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetMirrorRecordResponse: CustomStringConvertible {
    public var description: String { "GetMirrorRecordResponse()" }
}