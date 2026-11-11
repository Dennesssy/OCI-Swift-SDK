import Foundation

// MARK: - DomainReplication

public struct DomainReplication: Codable, Sendable {

    public var opcWaterMark: Float?
    public var txnSeqNumber: Float?
    public var domainReplicationStates: [DomainReplicationStates]

    private enum CodingKeys: String, CodingKey {
        case opcWaterMark, txnSeqNumber, domainReplicationStates
    }

    public init(
                opcWaterMark: Float? = nil,
                txnSeqNumber: Float? = nil,
                domainReplicationStates: [DomainReplicationStates]
    ) {
        self.opcWaterMark = opcWaterMark
        self.txnSeqNumber = txnSeqNumber
        self.domainReplicationStates = domainReplicationStates
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DomainReplication: CustomStringConvertible {
    public var description: String { "DomainReplication()" }
}