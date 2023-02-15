##  Uptick Testnet 3.0 | Test Report

The duration of Uptick Testnet 3.0 [Jan 17th, 2023 - Feb 10th, 2023] was around three weeks in total.

The following tasks were completed successfully, one week earlier than expected:

1. A fully simulated network running on the main network to ensure its smooth operation.
2. Configure the vesting account, and complete the testing and verification of the vesting mechanism on the testnet.
3. Complete the test, including transaction fees, validator income, etc. and the verification of actuarial verification.

In addition, the vesting account also increases the stake in the vesting state.

The main test content is as follows:

#### 1、Tasks Completed and Problems Discovered Through Uptick Testnet 3.0

##### 1.1 Tasks Completed

##### 1.1.1 Actuarial Staking, Reward and Commission
Statistics and actuarial calculations have been made on the rewards of various pledges under the different inflation rates of 7% and 13%.

The main calculation formula is as follows:

1）community_pool = [increased amount per block] * [community-rate] * [block height]
   
2）distribute ModuleAccount balance = [increased amount per block] * (1-community-rate) * [block height]
   
3）rewards = [increased amount per block] * (1-community-rate) * [block height]
   
4）commission = [Current Account Pledge Amount] * [distribute ModuleAccount Balance] / Current Total Pledge Amount * (1 - Commission Ratio)

##### 1.1.2 Confirm the Locking, Unlocking and Stake of the Vesting Account Amount

The genesis file sets PeriodicVestingAccount, DelayedVestingAccount and ContinuousVestingAccount, and verifies the basic operations of various vesting accounts, including the transfer and stake of vesting accounts, and the results meet expectations.

#####   1.1.3 Actuarial Transaction Fees
The actuarial calculation of the transaction costs of Cosmos and EVM transactions and how to ensure that the costs of Cosmos and EVM transactions are basically the same. It is mainly to set the value of [minimum-gas-price] in the genesis file.

The estimation is as follows:

when [minimum-gas-price] is set to 10G (10000000000),
The normal transaction of cosmos and evm is about: 0.001 uptick.

#####   1.2. Problem Found

#####   1.2.1 0 Fee Can Be Traded
Initially, when [minimum-gas-price] is set to 0 in the genesis file, no transactions with 0 fees could be executed correctly.

Solution: After the main chain is released, the value of [minimum-gas-price] is set in a reasonable range, such as 10G.

#####   1.2.2 Actuarial and Estimated Errors
There is an error between the running results of the test data and the realized estimate, and the error is controlled at about 3%. The main reason for this error is that the inflation rate and the commission rate are floating values, and the floating values ​​control the changes in their data through parameters such as min and max.

#####   1.2.3 Burn Test, Put it on Testnet 2.0
Since Testnet 3.0 is consistent with the main network parameters, it takes a long time  (5 days) to modify the [gensis parameters], and the burn test is transferred to the local newline and testnet2 for confirmation

####   2. Test Content and Testnet Results

The connection to the test case is as follows:
https://docs.google.com/spreadsheets/d/1OjRy73Lu5BhYW0GEZDDLdx_jyGkEkZGRoIw89u4bIzc/edit#gid=0

#####   2.1 Validator Income Test and Actuarial Verification
Corresponding test case1~case7
https://docs.google.com/spreadsheets/d/1OjRy73Lu5BhYW0GEZDDLdx_jyGkEkZGRoIw89u4bIzc/edit#gid=1686956372
https://docs.google.com/spreadsheets/d/1OjRy73Lu5BhYW0GEZDDLdx_jyGkEkZGRoIw89u4bIzc/edit#gid=1864673701

#####   2.2 Verification of Vesting
Corresponding test case4
https://docs.google.com/spreadsheets/d/1OjRy73Lu5BhYW0GEZDDLdx_jyGkEkZGRoIw89u4bIzc/edit#gid=1686956372

#####   2.3 Cosmos and EVM Transaction Fee Verification
Corresponding test case8~9
https://docs.google.com/spreadsheets/d/1OjRy73Lu5BhYW0GEZDDLdx_jyGkEkZGRoIw89u4bIzc/edit#gid=1541135110

####    3. Individual or Team Contributors

#####   3.1 Submitter of the Node (Task 1)

There were 9 test node teams participating in the network (in no particular order):

- [Brochain](https://brocha.in)
- [Cryptech](https://cryptech.com.ua)
- [Kalia Network](https://kalia.network)
- [Leonoor's Cryptoman](https://t.me/LC_Announcements)
- [NodeStake](https://nodestake.top)
- [P-ops Team](https://www.pops.one)
- [SNZ Pool](https://snzholding.com)
- [Staketab](https://staketab.com)
- [Validatrium](https://validatrium.com/)

#####   3.2 Testnet 3.0 Task

##### 3.2.1 Blockchain Explorer (Tasks 2, 4)
- Brochain
- Romashkin
- Kalia Network

#####   3.2.2 Transaction Data Statistics and Analysis (Tasks 7, 8)
- Brochain

#####   3.3.3 Vesting Data Allocation (Task 9)
- Brochain

#####   3.3 Community Task (Task 4)
Complete batch transfer script for cosmos transactions:
- Nochance | MMS
- Emre NOP | TheNOP.io

Uptick Network Infrastructure Team
2023.2.15