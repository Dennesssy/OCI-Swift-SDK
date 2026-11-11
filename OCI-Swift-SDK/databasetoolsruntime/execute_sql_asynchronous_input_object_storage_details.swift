import Foundation

// MARK: - ExecuteSqlAsynchronousInputObjectStorageDetails

public struct ExecuteSqlAsynchronousInputObjectStorageDetails: Codable, Sendable {

    public var object: ExecuteSqlObjectStorageLocation?

    private enum CodingKeys: String, CodingKey {
        case object
    }

    public init(
                object: ExecuteSqlObjectStorageLocation? = nil
    ) {
        self.object = object
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlAsynchronousInputObjectStorageDetails: CustomStringConvertible {
    public var description: String { "ExecuteSqlAsynchronousInputObjectStorageDetails()" }
}