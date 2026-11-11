import Foundation
import OCICommon

// MARK: - ExecuteSqlBind

public struct ExecuteSqlBind: Codable, Sendable {

    public var dataType: String?
    public var name: String?
    public var index: Int?
    public var mode: ExecuteSqlBindModeEnum?
    public var values: [JSONValue]?
    public var results: [JSONValue]?
    public var plsqlTableTypeDetails: ExecuteSqlBindPlsqlTable?

    private enum CodingKeys: String, CodingKey {
        case dataType, name, index, mode, values, results, plsqlTableTypeDetails
    }

    public init(
                dataType: String? = nil,
                name: String? = nil,
                index: Int? = nil,
                mode: ExecuteSqlBindModeEnum? = nil,
                values: [JSONValue]? = nil,
                results: [JSONValue]? = nil,
                plsqlTableTypeDetails: ExecuteSqlBindPlsqlTable? = nil
    ) {
        self.dataType = dataType
        self.name = name
        self.index = index
        self.mode = mode
        self.values = values
        self.results = results
        self.plsqlTableTypeDetails = plsqlTableTypeDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlBind: CustomStringConvertible {
    public var description: String { "ExecuteSqlBind()" }
}