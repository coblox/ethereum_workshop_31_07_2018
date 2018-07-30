IMAGE=coblox/evm-tools

docker pull $IMAGE

function run_in_container() {
    docker run --rm -v $PWD:/home "$IMAGE" $@
}

function evm-run() {
    run_in_container evm --debug "$@" run
}

function asm-compile() {
    run_in_container \
    solc --assemble /home/"$1" `# pass input to solc` \
    2> /dev/null | `# surpress stderr` \
    grep -e "Binary representation:" -A 1 | `# extract only byte code` \
    sed -n '1!p' `# remove the first line`
}

function asm-run() {
    evm-run --code $(asm-compile $1)
}

function sol-compile() {
    run_in_container \
    solc /home/"$1" --bin-runtime | `#pass input file to solc` \
    grep -e "Binary" -A 1 | `# extract only byte code` \
    sed -n '1!p' `# remove the first line`
}

function disasm() {
    run_in_container \
    evm disasm /home/"$1" | `#pass file to evm` \
    sed -n '1!p' `# remove the first line`
}
