// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CarbonFootprintTracker {
    struct EmissionEntry {
        uint256 amount; // Carbon emissions in kilograms
        string description; // Description of emission source
        uint256 timestamp; // Time of the entry
    }

    // Mapping of user addresses to their list of emissions
    mapping(address => EmissionEntry[]) private emissions;

    // Mapping to store the total emissions per user
    mapping(address => uint256) private totalEmissions;

    // Event emitted when a new emission entry is added
    event EmissionLogged(address indexed user, uint256 amount, string description, uint256 timestamp);

    /**
     * @dev Log carbon emission entry for the sender.
     * @param _amount The amount of carbon emissions in kilograms.
     * @param _description Short description of the emission source.
     */
    function logEmission(uint256 _amount, string memory _description) public {
        require(_amount > 0, "Emission amount must be greater than zero");
        
        // Add a new emission entry for the user
        emissions[msg.sender].push(EmissionEntry({
            amount: _amount,
            description: _description,
            timestamp: block.timestamp
        }));

        // Update the total emissions for the user
        totalEmissions[msg.sender] += _amount;

        // Emit event for transparency
        emit EmissionLogged(msg.sender, _amount, _description, block.timestamp);
    }

    /**
     * @dev Get the total emissions for a specific user.
     * @return Total emissions in kilograms.
     */
    function getTotalEmissions() public view returns (uint256) {
        return totalEmissions[msg.sender];
    }

    /**
     * @dev Get all emission entries for the user.
     * @return Array of EmissionEntry structs.
     */
    function getEmissionEntries() public view returns (EmissionEntry[] memory) {
        return emissions[msg.sender];
    }
}
