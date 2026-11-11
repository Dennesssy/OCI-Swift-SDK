import Foundation

// MARK: - ExecuteSqlOutputObjectStorageDetails

public struct ExecuteSqlOutputObjectStorageDetails: Codable, Sendable {

    public var object: ExecuteSqlObjectStorageLocation?
    public var resultDispositionTemplates: [ExecuteSqlOutputResultDispositionTemplate]?
    public var timeOfDeletion: Date?

    private enum CodingKeys: String, CodingKey {
        case object, resultDispositionTemplates, timeOfDeletion
    }

    public init(
                object: ExecuteSqlObjectStorageLocation? = nil,
                resultDispositionTemplates: [ExecuteSqlOutputResultDispositionTemplate]? = nil,
                timeOfDeletion: Date? = nil
    ) {
        self.object = object
        self.resultDispositionTemplates = resultDispositionTemplates
        self.timeOfDeletion = timeOfDeletion
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlOutputObjectStorageDetails: CustomStringConvertible {
    public var description: String { "ExecuteSqlOutputObjectStorageDetails()" }
}