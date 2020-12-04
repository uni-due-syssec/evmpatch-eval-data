#!/usr/bin/env python
import os
import os.path
import logging

import evmpatch

from evmpatch import BBJumpoutRewriter
from evmpatch.patches import (ADD_U256_CHECKED, SUB_U256_CHECKED,
                              MUL_U256_CHECKED)

log = logging.getLogger(__name__)
# log.setLevel(logging.DEBUG)
# logging.basicConfig(level=logging.DEBUG)
# evmpatch.set_log_level(logging.DEBUG)

contracts = [
    # (contract path, patch_point, patch)
    ("TestAdd.bin-runtime", [0x60], ADD_U256_CHECKED),
    ("TestSub.bin-runtime", [0x60], SUB_U256_CHECKED),
    ("TestMul.bin-runtime", [0x60], MUL_U256_CHECKED),
    ("TestMultipleAdd.bin-runtime", list(range(0x75, 0x79)), ADD_U256_CHECKED),
]

_i = " " * 2

for contract_path, patch_points, patch in contracts:
    print(contract_path)
    contract = evmpatch.load_contract("./" + contract_path)
    rw = BBJumpoutRewriter(contract)

    for patch_point in patch_points:
        rw.overwrite_with_patch(patch_point, 1, patch)
    patched_code = rw.get_code()

    print(_i, f"Gas increase: {rw.patch_info.gas_increase}")
    print(_i, f"Size increase: {rw.patch_info.size_increase}")
    print(_i, f"Total size increase: {rw.compute_total_size_increase()}")

    print(_i, "Size comparison:")
    print(_i, "Unpatched: ", len(contract))
    x = contract_path.replace("Test", "TestSafe")
    print(_i, "SafeMath: ", os.path.getsize(x))
    print(_i, "SafeMathOpt: ",
          os.path.getsize(contract_path.replace("Test", "TestSafeOpt")))
    print(_i, "Rewritten: ", len(patched_code))

    fname = "./" + contract_path.replace(".", ".evmpatched.")
    with open(fname, "w") as f2:
        f2.write(patched_code.hex())
