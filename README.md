# Agriculture Contract 

## Overview

The `AgricultureContract` is a Solidity smart contract created to manage agricultural activities on the Ethereum blockchain. This contract supports acquiring farm land, adjusting irrigation water levels, and calculating the total cost associated with the acquired land.

## Features

### 1. Acquiring Farm Land

The `acquireFarm` function allows users to acquire farm land by specifying the area in square units. It utilizes a `require` statement to ensure that the provided area is greater than 0, preventing invalid inputs. If the condition is not met, the function will revert, and any changes made during the execution will be rolled back.

### 2. Adjusting Water Level

The `adjustWaterLevel` function is designed to adjust the irrigation water level. It employs an `assert` statement to ensure that the water level is within a predefined valid range (0 to 100). If the condition is false, the transaction is reverted, helping to catch unexpected errors or ensure invariants.

### 3. Calculating Total Cost

The `Irrigation_Cost` function calculates the total cost associated with the acquired farm land. It uses a combination of a conditional check and the `revert` statement. If no farm land has been acquired (totalFarmArea is 0), the function will revert with the message "No farm acquired. Acquire farm before calculating total cost."

## Error Handling

### `require` Statement

The `require` statement is employed to enforce conditions that must be true for the function to proceed. If the condition is not met, the function will revert, and any changes made during the execution will be undone.

### `assert` Statement

The `assert` statement is used to check for conditions that should never be false. If an `assert` statement evaluates to false, the transaction is reverted. It is typically used to catch internal errors or to ensure invariants.

### `revert` Statement

The `revert` statement is used explicitly in the `Irrigation_Cost` function. It is triggered when the condition specified in the `if` statement is true, and it provides a custom error message. In this case, it ensures that farm land has been acquired before attempting to calculate the total cost.

## Events

The contract emits events to provide information about significant contract actions, enabling external systems to react accordingly.

1. **FarmAcquired:** Emitted when farm land is acquired, including the area acquired.

2. **WaterLevelAdjusted:** Emitted when the irrigation water level is adjusted, including the new water level.

3. **TotalCostCalculated:** Emitted when the total cost of farm land is calculated, including the calculated total cost.


## Author
YS Balaji

ysbalaji4@gmail.com

## License

This smart contract is released under the MIT License. Refer to the SPDX-License-Identifier tag in the contract file for details.

---
