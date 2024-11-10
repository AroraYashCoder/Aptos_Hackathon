module QuizApp::RewardDistributor {
    // Importing necessary modules from the Aptos framework:
    use aptos_framework::coin;
    use aptos_framework::aptos_coin;

    /// # Function: distribute_rewards
    /// ## Parameters:
    /// - `sender`: A reference to the signer's account that initiates the transfer.
    /// - `receiver`: The address of the recipient to whom the tokens will be transferred.
    /// - `amount`: The number of Aptos tokens to be transferred (denoted in `u64`).
    public entry fun distribute_rewards(
        sender: &signer,        // Sender's account (signer) who authorizes the transfer
        receiver: address,      // Address of the recipient to receive tokens
        amount: u64             // Amount of tokens to transfer
    ) {
        // Transfer the specified amount of Aptos tokens from the sender to the receiver.
        coin::transfer<aptos_coin::AptosCoin>(sender, receiver, amount);
    }
}
