import Foundation

// MARK: - OracleRmStack

public struct OracleRmStack: Codable, Sendable {

    public var dvpVersion: String?
    public var dvpStackId: String?
    public var dvpStreamId: String?

    private enum CodingKeys: String, CodingKey {
        case dvpVersion, dvpStackId, dvpStreamId
    }

    public init(
                dvpVersion: String? = nil,
                dvpStackId: String? = nil,
                dvpStreamId: String? = nil
    ) {
        self.dvpVersion = dvpVersion
        self.dvpStackId = dvpStackId
        self.dvpStreamId = dvpStreamId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OracleRmStack: CustomStringConvertible {
    public var description: String { "OracleRmStack()" }
}