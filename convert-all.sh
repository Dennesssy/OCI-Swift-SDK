#!/bin/bash
# Launch parallel conversion processes

set -e

echo "Starting parallel OCI SDK conversion..."
echo "======================================"

# Start all conversions in background
./convert-identity.sh &
PID1=$!
echo "Identity conversion PID: $PID1"

./convert-database.sh &
PID2=$!
echo "Database conversion PID: $PID2"

echo ""
echo "======================================"
echo "All conversion scripts launched!"
echo ""
echo "Logs:"
echo "  Identity: .nanobot/identity-conversion.log"
echo "  Database: .nanobot/database-conversion.log"
echo ""
echo "Waiting for completion..."
echo "======================================"

# Wait for all processes
wait $PID1
echo "Identity conversion completed"

wait $PID2
echo "Database conversion completed"

echo ""
echo "======================================"
echo "All conversions finished!"
echo "======================================"
