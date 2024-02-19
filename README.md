# Requirements
expect package

Installation: apt install expect

# Usage

Adjust varibles WALLET_PATH, TASK_ID, STAKE_POT_ACCOUNT, BENEFICIARY_ACCOUNT, CLAIMER_WALLET_PATH

One script for each task

Script can be added to crontab, example for hourly execution:

0 * * * * /app/data/claimer.sh