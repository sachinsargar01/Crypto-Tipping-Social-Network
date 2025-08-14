**Crypto Tipping Module**

## 📜 Description

The **Crypto Tipping Module** is a Move-based smart contract designed for the Aptos blockchain.
It allows users to **register** for tipping and send **AptosCoin** tips to other registered users.
Each user’s total received tips are tracked on-chain, enabling transparent and immutable record-keeping.

## 🎯 Vision

To create a simple yet secure tipping mechanism that empowers creators, developers, and contributors
in the Aptos ecosystem to receive **direct peer-to-peer** support without intermediaries.

## 🚀 Future Scope

* **Multi-token support**: Allow tipping in tokens other than AptosCoin.
* **Leaderboards**: Track and display top tippers and recipients.
* **Custom messages**: Send personalized messages with tips.
* **Automated payouts**: Allow users to set tipping rules or subscription-based tips.
* **Integration with dApps**: Seamless embedding of tipping functionality into content platforms.

## 📬 Contract Details

**Module Address**:"0xf0a648b498acc9cf5a0fb1666b59aaedc5171cc709d9e31f74b8baf0f0d28937"
<img width="1760" height="806" alt="image" src="https://github.com/user-attachments/assets/731f87ff-f783-44ae-b224-7a4a65358408" />

**Functions Available**:

1. `register_user(user: &signer)` – Registers a user for tipping (can be called only once).
2. `send_tip(sender: &signer, recipient: address, amount: u64)` – Sends tips in AptosCoin to another registered user and updates their total tips.

