# EVMPatch Evaluation Data

This repository contains some of the raw data we produced while performing the
evaluation in the our paper *EVMPatch: Timely and Automated Patching of
Ethereum Smart Contracts*
([arXiv:2010.00341](https://arxiv.org/abs/2010.00341)).  The data and code in
this repository was produced during a research collaboration of [NEC Labs
Europe](http://www.neclab.eu) and [University of
Duisburg-Essen](https://www.syssec.wiwi.uni-due.de/).


## Citing in Academic Work

For citing these results in academic work please use the following bibtex entry:

```bibtex
@inproceedings{evmpatch,
  title     = "{EVMPatch}: Timely and Automated Patching of Ethereum Smart Contracts",
  author    = "Rodler, Michael and Li, Wenting and Karame, Ghassan and Davi, Lucas",
  booktitle    = "30th {USENIX} Security Symposium ({USENIX} Security '21) [To be published]",
  year         = "2021",
}
```

## Repository Structure

* <a href="./CVE-comparison">./CVE-comparison/</a> - the 5 contracts
  with known CVEs and attacks, which we patched (1) manually with SafeMath and 
  (2) automatically with EVMPatch.
* <a href="./CVEs-tx-reexec-analysis">./CVEs-tx-reexec-analysis/</a> - the
  results of our analysis of replaying all transactions of the 5 contracts
  mentioned above.
* <a href="./gas-cost-comparison-to-safemath">./gas-cost-comparison-to-safemath/</a>
  - some experiments on gas cost increase when using EVMPatch or SafeMath to
  patch contracts.
* <a href="./large-scale">./large-scale</a> - contains the results of our large-scale
  evaluation on ~14k contracts, out of which ~8k have transactions. These
  contracts are all from the full [Osiris dataset](https://github.com/christoftorres/Osiris/tree/master/datasets/contracts).
  Note that this data is stored compressed in [git lfs](https://git-lfs.github.com/)
