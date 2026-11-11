import Foundation

// MARK: - ExecuteSqlBindPlsqlTable

public struct ExecuteSqlBindPlsqlTable: Codable, Sendable {

    public var typeName: String?
    public var typeSubname: String?
    public var typeComponents: [ExecuteSqlBindTypeComponent]?

    private enum CodingKeys: String, CodingKey {
        case typeName, typeSubname, typeComponents
    }

    public init(
                typeName: String? = nil,
                typeSubname: String? = nil,
                typeComponents: [ExecuteSqlBindTypeComponent]? = nil
    ) {
        self.typeName = typeName
        self.typeSubname = typeSubname
        self.typeComponents = typeComponents
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlBindPlsqlTable: CustomStringConvertible {
    public var description: String { "ExecuteSqlBindPlsqlTable()" }
}