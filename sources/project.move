module MyModule::CryptoTipping {

    use aptos_framework::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;

    /// Struct to store total tips received by a user
    struct TipAccount has key, store {
        total_tips: u64,
    }

    /// Function to register a user for tipping (only once)
    public fun register_user(user: &signer) {
        let addr = signer::address_of(user);
        assert!(!exists<TipAccount>(addr), 1); // Prevent duplicate registration
        move_to(user, TipAccount { total_tips: 0 });
    }

    /// Function to send a tip to another user
    public fun send_tip(sender: &signer, recipient: address, amount: u64) acquires TipAccount {
        assert!(exists<TipAccount>(recipient), 2); // Ensure recipient is registered

        let recipient_account = borrow_global_mut<TipAccount>(recipient);

        // Transfer AptosCoin from sender to recipient
        let tip = coin::withdraw<AptosCoin>(sender, amount);
        coin::deposit<AptosCoin>(recipient, tip);

        // Update recipient's total tips
        recipient_account.total_tips = recipient_account.total_tips + amount;
    }
}
