// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AgricultureContract {
    uint public totalFarmArea;
    uint public irrigationWaterLevel;
    uint public totalCost;

    event FarmAcquired(uint indexed farmArea);
    event WaterLevelAdjusted(uint indexed waterLevel);
    event TotalCostCalculated(uint totalCost);

    // Function using require statement to ensure valid farm acquisition
    function acquireFarm(uint area) public {
        require(area > 0, "Farm area must be greater than 0");
        totalFarmArea += area;
        emit FarmAcquired(area);
    }

    // Function using assert statement to ensure valid water level range
    function adjustWaterLevel(uint level) public {
        assert(level >= 0 && level <= 100);
        // Perform irrigation-related tasks based on the water level
        irrigationWaterLevel = level;
        emit WaterLevelAdjusted(level);
    }

    // Function to calculate the total cost and return the cost if land has been acquired
    function Irrigation_Cost() public returns (uint) {
        if (totalFarmArea == 0) {
            revert("No farm acquired. Acquire farm before calculating total cost");
        }

        // Assume a cost of 3 units per unit of farm area for simplicity
        totalCost = totalFarmArea * 3;
        emit TotalCostCalculated(totalCost);

        return totalCost;
    }
}
