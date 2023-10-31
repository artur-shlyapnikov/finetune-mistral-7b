#!/bin/bash
set -e

git clone https://github.com/OpenAccess-AI-Collective/axolotl
cd axolotl
pip3 install packaging
pip3 install -e '.[flash-attn,deepspeed]'
pip3 install -U git+https://github.com/huggingface/peft.git
accelerate launch -m axolotl.cli.train ../mistral-qlora.yml