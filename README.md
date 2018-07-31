# Ethereum Workshop 

Run `source setup.sh`.

This will create the following functions in your current shell session:

## evm-run

Executes code on the EVM. Pipes through the parameters to the EVM binary.

Examples:

- `evm-run --code XXXXXX`
- `evm-run --code XXXXXX --input 000000`

## asm-compile

Takes an EVM-assembly file and compiles it to hex code.

Example: `asm-compile 1-hello-world/HelloWorld.asm`

## asm-run

Combines `asm-compile` and `evm-run`.

Takes an EVM-assembly file, compiles it and executes it on the EVM.

Example: `asm-run 1-hello-world/HelloWorld.asm`

## disasm

Dis-assemblies hex-code into op-codes.

Example: `disasm 1-hello-world/HelloWorld.bin-runtime`

## sol-compile

Compiles Solidity code to hex.

Example: `sol-compile 1-hello-world/HelloWorld.sol`