import Foundation

// MARK: - executesqloutputdetails

public struct executesqloutputdetails: Codable, Sendable {

    public var jsonData: Data?
    public var resultDispositionTemplates: [ExecuteSqlOutputResultDispositionTemplate]?
    public var type: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, resultDispositionTemplates, type
    }

    public init(
                jsonData: Data? = nil,
                resultDispositionTemplates: [ExecuteSqlOutputResultDispositionTemplate]? = nil,
                type: String? = nil
    ) {
        self.jsonData = jsonData
        self.resultDispositionTemplates = resultDispositionTemplates
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension executesqloutputdetails: CustomStringConvertible {
    public var description: String { "executesqloutputdetails()" }
}