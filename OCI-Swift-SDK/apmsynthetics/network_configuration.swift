import Foundation

// MARK: - NetworkConfiguration

public struct NetworkConfiguration: Codable, Sendable {

    public var numberOfHops: Int?
    public var probePerHop: Int?
    public var transmissionRate: Int?
    public var `protocol`: ProtocolEnum?
    public var probeMode: ProbeModeEnum?

    private enum CodingKeys: String, CodingKey {
        case numberOfHops, probePerHop, transmissionRate, `protocol`, probeMode
    }

    public init(
                numberOfHops: Int? = nil,
                probePerHop: Int? = nil,
                transmissionRate: Int? = nil,
                `protocol`: ProtocolEnum? = nil,
                probeMode: ProbeModeEnum? = nil
    ) {
        self.numberOfHops = numberOfHops
        self.probePerHop = probePerHop
        self.transmissionRate = transmissionRate
        self.`protocol` = `protocol`
        self.probeMode = probeMode
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension NetworkConfiguration: CustomStringConvertible {
    public var description: String { "NetworkConfiguration()" }
}