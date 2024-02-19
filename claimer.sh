#!/usr/bin/expect

set WALLET_PATH "/app/config/id.json"

set TASK_ID "XXX"

set STAKE_POT_ACCOUNT "XXX"

set BENEFICIARY_ACCOUNT "XXX"

set CLAIMER_WALLET_PATH "/app/namespace/staking_wallet.json"

# Set timeout value for waiting
set timeout 30

# Run the npx script
spawn npx @_koii/create-task-cli@latest

expect "Enter the path to your wallet"
send $WALLET_PATH
send "\r"

expect "local vars"
send "\033\[B"
send "\033\[B"
send "\033\[B"
send "\r"

expect "Enter the task id"
send $TASK_ID
send "\r"

expect "Enter the stakePotAccount address"
send $STAKE_POT_ACCOUNT
send "\r"

expect "Enter the beneficiaryAccount address (Address that the funds will be transferred to)"
send $BENEFICIARY_ACCOUNT
send "\r"

expect "Enter the path to Claimer wallet"
send $CLAIMER_WALLET_PATH
send "\r"

# Expect script to finish
expect eof