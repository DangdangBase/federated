#!/usr/bin/bash

start=$(date +%s)
python gans/experiments/emnist/run_experiments.py
end=$(date +%s)

curl -s -d "payload={\"text\": \"Federated Learning Elapsed Time: $(($end-$start)) seconds\"}" https://hooks.slack.com/services/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
