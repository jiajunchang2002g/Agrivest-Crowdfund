## Agrivest is live! 

Hosted on replit at: https://agrivest-crowdfund--jiajunchang2002.replit.app

<img width="2560" height="1600" alt="image" src="https://github.com/user-attachments/assets/a714ac2a-b702-4f72-a617-bc193bf61de9" />
<img width="2560" height="1600" alt="image" src="https://github.com/user-attachments/assets/93c76389-8e93-4a7d-aa11-4d84a23b38ca" />
<img width="2560" height="1600" alt="image" src="https://github.com/user-attachments/assets/54b477ab-d91e-4478-ad97-7b6b872e30e4" />
<img width="2560" height="1424" alt="image" src="https://github.com/user-attachments/assets/ac1e623b-5257-4718-8531-ef958d6eb46e" />

Here's what was built:

### Pages

**Home** — Hero, live platform stats (5 campaigns, 7,990 XRP raised), featured campaign grid, how-it-works section
**Explore** — Browse/filter campaigns by status and category, with search
Campaign Detail — Full detail with progress bar, investor list, invest form with XRPL escrow lock, release/cancel escrow actions with tx hash links to XRPL explorer
Create Campaign — Farmer posts a campaign with their XRPL wallet, goal, deadline, and crop category
Dashboard — Enter any XRPL wallet address to see your campaigns and investments with escrow status chips (Escrowed, Released, Returned)
XRPL Escrow

Uses xrpl.js (JavaScript SDK — same escrow functionality as xrpl-py, fits the existing Node.js stack)
Investments lock funds via EscrowCreate, released to farmer via EscrowFinish, returned via EscrowCancel
Currently uses simulated escrow transactions (mock tx hashes) since a funded XRPL testnet wallet seed is needed to submit real on-chain transactions — set PLATFORM_WALLET_SEED in your environment secrets to activate live XRPL transactions
To test it — try wallet address rHb9CJAWyB4rj91VRWn96DkukG4bwdtyTh in the Dashboard to see the seeded Organic Maize campaign and its backers.
