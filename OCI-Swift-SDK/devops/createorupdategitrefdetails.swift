import Foundation

// MARK: - createorupdategitrefdetails

public struct createorupdategitrefdetails: Codable, Sendable {

    public var jsonData: Data?
    public var refName: String?
    public var refType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, refName, refType
    }

    public init(
                jsonData: Data? = nil,
                refName: String? = nil,
                refType: String? = nil
    ) {
        self.jsonData = jsonData
        self.refName = refName
        self.refType = refType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension createorupdategitrefdetails: CustomStringConvertible {
    public var description: String { "createorupdategitrefdetails()" }
}