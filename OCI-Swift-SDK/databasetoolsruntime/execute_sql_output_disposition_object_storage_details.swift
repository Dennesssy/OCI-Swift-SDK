import Foundation

// MARK: - ExecuteSqlOutputDispositionObjectStorageDetails

public struct ExecuteSqlOutputDispositionObjectStorageDetails: Codable, Sendable {

    public var namespace: String?
    public var bucketName: String?
    public var objectName: String?
    public var contentType: String?
    public var contentDisposition: String?
    public var contentEncoding: String?
    public var cacheControl: String?
    public var contentLanguage: String?
    public var opcMeta: [String: String]?
    public var opcSseCustomerAlgorithm: String?
    public var opcSseCustomerKey: String?
    public var opcSseCustomerKeySha256: String?
    public var opcSseKmsKeyId: String?
    public var storageTier: ExecuteSqlOutputDispositionObjectStorageDetailsStorageTierEnum?

    private enum CodingKeys: String, CodingKey {
        case namespace, bucketName, objectName, contentType, contentDisposition, contentEncoding, cacheControl, contentLanguage, opcMeta, opcSseCustomerAlgorithm, opcSseCustomerKey, opcSseCustomerKeySha256, opcSseKmsKeyId, storageTier
    }

    public init(
                namespace: String? = nil,
                bucketName: String? = nil,
                objectName: String? = nil,
                contentType: String? = nil,
                contentDisposition: String? = nil,
                contentEncoding: String? = nil,
                cacheControl: String? = nil,
                contentLanguage: String? = nil,
                opcMeta: [String: String]? = nil,
                opcSseCustomerAlgorithm: String? = nil,
                opcSseCustomerKey: String? = nil,
                opcSseCustomerKeySha256: String? = nil,
                opcSseKmsKeyId: String? = nil,
                storageTier: ExecuteSqlOutputDispositionObjectStorageDetailsStorageTierEnum? = nil
    ) {
        self.namespace = namespace
        self.bucketName = bucketName
        self.objectName = objectName
        self.contentType = contentType
        self.contentDisposition = contentDisposition
        self.contentEncoding = contentEncoding
        self.cacheControl = cacheControl
        self.contentLanguage = contentLanguage
        self.opcMeta = opcMeta
        self.opcSseCustomerAlgorithm = opcSseCustomerAlgorithm
        self.opcSseCustomerKey = opcSseCustomerKey
        self.opcSseCustomerKeySha256 = opcSseCustomerKeySha256
        self.opcSseKmsKeyId = opcSseKmsKeyId
        self.storageTier = storageTier
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlOutputDispositionObjectStorageDetails: CustomStringConvertible {
    public var description: String { "ExecuteSqlOutputDispositionObjectStorageDetails()" }
}