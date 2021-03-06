# AF2_Tutorial
Tutorial to run AlphaFold2 - Monomers and Multimers

### Initial Setups

### Compute Resources
*   Register for the Robetta server account https://robetta.bakerlab.org/register.php (takes about a minute)
*   For colab (https://research.google.com/colaboratory/), you need an active gmail account https://support.google.com/mail/answer/56256?hl=en (takes about a minute)
*   Alternative Colab https://colab.research.google.com/github/sokrypton/ColabFold/blob/main/AlphaFold2.ipynb

*   Rutger's participants with an active Rutger's netid can apply for the Amarel cluster account: https://oarc.rutgers.edu/amarel-cluster-access-request/

### SSH clients
    * Chrome Browser - Secured Shell App: https://chrome.google.com/webstore/detail/secure-shell-app/pnhechapfaindjhompbnflcldabbghjo?hl=en
    * Windows OS - git bash: https://gitforwindows.org/
    * Others: puTTY, moabaxterm, winscp,

## Main Folders
    Examples
    AnalysisScripts (scripts to get RMSD and pTM plots)
    


## How to get structure of a protein from its sequence. 

* Query PDB
* Query AlphaFoldDB  
* Do prediction on 
     * AF2 or RoseTTAFold servers
     * local cluster/workstation or external resources like  XSEDE, National Supercomputers, Cloud

## Pointers to external Resources
- Query PDB: https://www.rcsb.org/
- Query AlphaFoldDB https://alphafold.ebi.ac.uk/
- Robetta Server: https://robetta.bakerlab.org/
- AlphaFold Colab: https://colab.sandbox.google.com/github/deepmind/alphafold/blob/main/notebooks/AlphaFold.ipynb

## Local Clusters/Workstation

    Conda
    Docker/Singularity

### Submitting jobs to the cluster via SLURM

SSH into the cluster. For this step, you need to open a terminal, SSH client,  or web access method like Open Ondemand, Chrome Shell App, or Fastx. 

```
ssh <netid>@amarel.hpc.rutgers.edu
```

Clone this repository
```
>  git clone https://github.com/dmbala/AF2_Tutorial
```

```
>  cd AF2_Tutorial
```
To run all the jobs
```
> ./run_all_jobs.sh
```
Now check your jobs:
```
> squeue -u <netid> 
```
Note that if you are not running this on the Amarel clsuter, please modify the db and bin path in the wrapper scripts, and  change the patition names and other parameters specific to your local cluster. 

## Molview
Web mol views: https://www.ncbi.nlm.nih.gov/Structure/icn3d/full.html

Check for a list of molecular viewing packages: https://www.rcsb.org/docs/additional-resources/molecular-graphics-software
## AlphaFoldDB Examples
   - https://alphafold.ebi.ac.uk/entry/Q93074
   - https://alphafold.ebi.ac.uk/entry/Q5VSL9
   - https://alphafold.ebi.ac.uk/entry/P54725

## Analysis
Copy the analysis scripts

```
chmod +x extract_ca_bfactor.sh
./extract_ca_bfactor.sh
```
```
chmod +x loop_rmsd.sh
./loop_rmsd.sh <pdbid>
```
