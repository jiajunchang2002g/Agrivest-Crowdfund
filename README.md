# 🌱 Agrivest

**Decentralized agricultural crowdfunding powered by XRP Ledger Escrow**

**Live Demo:** https://agrivest-crowdfund--jiajunchang2002.replit.app

---

## Overview

Agrivest connects farmers directly with investors through decentralized crowdfunding on the XRP Ledger (XRPL).

Traditional agricultural financing is often slow, inaccessible, or unavailable for smallholder farmers. Agrivest enables farmers to raise capital transparently while giving investors confidence that their funds remain securely locked in XRPL Escrow until campaign conditions are met.

---

## Screenshots

<img width="2560" height="1600" alt="image" src="https://github.com/user-attachments/assets/a714ac2a-b702-4f72-a617-bc193bf61de9" />
<img width="2560" height="1600" alt="image" src="https://github.com/user-attachments/assets/93c76389-8e93-4a7d-aa11-4d84a23b38ca" />
<img width="2560" height="1600" alt="image" src="https://github.com/user-attachments/assets/54b477ab-d91e-4478-ad97-7b6b872e30e4" />
<img width="2560" height="1424" alt="image" src="https://github.com/user-attachments/assets/ac1e623b-5257-4718-8531-ef958d6eb46e" />

---

## Features

### 🏠 Home

* Hero landing page
* Live platform statistics
* Featured campaigns
* Simple "How It Works" onboarding

### 🔍 Explore

* Browse crowdfunding campaigns
* Search and filter by category
* Filter by campaign status

### 🌾 Campaign Details

* Campaign overview
* Funding progress visualization
* Investor list
* Investment form
* XRPL Escrow integration
* Escrow release and refund actions
* Transaction hash links to the XRPL Testnet Explorer

### ➕ Create Campaign

Farmers can launch fundraising campaigns by providing:

* XRPL wallet address
* Funding goal
* Campaign deadline
* Crop category
* Project description

### 📊 Dashboard

Track activity using any XRPL wallet address:

* Campaigns created
* Investments made
* Escrow status

  * Escrowed
  * Released
  * Returned

Demo wallet:

`rHb9CJAWyB4rj91VRWn96DkukG4bwdtyTh`

---

# XRPL Integration

Agrivest leverages **xrpl.js**, the official JavaScript SDK for the XRP Ledger, to implement secure escrow-based crowdfunding.

Current escrow workflow:

* Investor funds are locked using **EscrowCreate**
* Funds are released to the farmer using **EscrowFinish**
* Refunds are processed using **EscrowCancel**

For demonstration purposes, the application currently generates simulated transaction hashes.

To enable live XRPL Testnet transactions, simply configure:

```env
PLATFORM_WALLET_SEED=<your-funded-testnet-wallet-seed>
```

Once configured with a funded Testnet wallet, escrow transactions are submitted directly to the XRP Ledger.

---

## Tech Stack

* React
* TypeScript
* Node.js
* Express
* xrpl.js
* Tailwind CSS
* Replit

---

## Why Agrivest?

Agrivest addresses a real-world financing gap in agriculture by combining decentralized finance with the XRP Ledger.

### Benefits for Farmers

* Access to funding without traditional intermediaries
* Faster fundraising
* Transparent campaign management

### Benefits for Investors

* Secure escrow protection
* Transparent funding progress
* Immutable blockchain transaction records

---

## Team

* **Jia Jun** — Lead Developer (Blockchain integration & XRPL implementation)
* **Jia Kai** — Product Development
* **Yi Xin** — UX/UI Design
* **Travis** — Agricultural Advisor
* **Alex** — Business Development

---

## Demo Resources

* Live Application: https://agrivest-crowdfund--jiajunchang2002.replit.app
* Canva Presentation: https://www.canva.com/design/DAGpu9CfzAE/S2wAdZXDIxYBHQaesxTerA/edit
* Demo Video: https://www.loom.com/share/41fc49e649784751a541563ed693ebb8
* XRPL Testnet Explorer: https://testnet.xrpl.org/

---

## License

MIT License

---

Built with ❤️ to make agricultural financing more transparent, accessible, and secure through the XRP Ledger.

