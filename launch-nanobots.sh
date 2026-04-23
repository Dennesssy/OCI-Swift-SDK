#!/bin/bash
# Launch multiple nanobot agents for parallel OCI SDK conversion

set -e

PROJECT_DIR="/Users/denn/Desktop/OCIMain/Oracle-SDK"
NANOBOT_CONFIG="$PROJECT_DIR/.nanobot"

echo "Starting OCI SDK Conversion Nanobots..."
echo "======================================"
echo ""

# Function to launch a nanobot agent
launch_agent() {
    local agent_name=$1
    local port=$2
    
    echo "Launching $agent_name on port $port..."
    
    nanobot run \
        --config "$NANOBOT_CONFIG" \
        --agent "$agent_name" \
        --listen-address "localhost:$port" \
        --state "$PROJECT_DIR/.nanobot/${agent_name}.db" \
        --debug &
    
    echo "$agent_name PID: $!"
}

# Create Swift output directories
mkdir -p "$PROJECT_DIR/OCI-Swift-SDK/"{identity,database,objectstorage,loadbalancer}

# Launch agents on different ports
launch_agent "identity-agent" 8081
launch_agent "database-agent" 8082
launch_agent "objectstorage-agent" 8083
launch_agent "loadbalancer-agent" 8084

echo ""
echo "======================================"
echo "All nanobot agents launched!"
echo ""
echo "Agent URLs:"
echo "  Identity:      http://localhost:8081"
echo "  Database:      http://localhost:8082"
echo "  ObjectStorage: http://localhost:8083"
echo "  LoadBalancer:  http://localhost:8084"
echo ""
echo "Press Ctrl+C to stop all agents"
echo "======================================"

# Wait for all background processes
wait
