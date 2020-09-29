# Testing Parallel EMCEE

Just a check whether parallelization works and is faster on the cluster.

## Setup

```bash
conda create -n testemcee python=3.7
```

```bash
conda activate testemcee
```

```bash
conda install -c conda-forge emcee
```

## Test scheduling

```bash
sbatch testslurm.sh
```


