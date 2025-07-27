// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Vault {
    // Mapping: Nutzeradresse → Token → eingezahlter Betrag
    mapping(address => mapping(address => uint256)) public deposits;

    // Gesamtbeträge pro Token
    mapping(address => uint256) public totalDeposits;

    // Event: Deposit gemacht
    event Deposited(address indexed user, address indexed token, uint256 amount);

    /// @notice Nutzer zahlt ERC20 Token ein
    /// @param token Adresse des ERC20 Tokens
    /// @param amount Menge, die eingezahlt wird
    function deposit(address token, uint256 amount) external {
        require(amount > 0, "Amount must be > 0");
        require(IERC20(token).transferFrom(msg.sender, address(this), amount), "Transfer failed");

        deposits[msg.sender][token] += amount;
        totalDeposits[token] += amount;

        emit Deposited(msg.sender, token, amount);
    }

    /// @notice Gibt den eingezahlten Betrag eines Nutzers für ein Token zurück
    function getDeposit(address user, address token) external view returns (uint256) {
        return deposits[user][token];
    }

    // TODO: Funktionen für Swap, Yield Farming, Gewinnverteilung folgen hier...
}