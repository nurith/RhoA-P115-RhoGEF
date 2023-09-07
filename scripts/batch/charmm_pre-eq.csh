#!/bin/csh    
#SBATCH --job-name=cdcwtgtp
#SBATCH --partition=norm,ccr
#SBATCH --exclusive
#SBATCH --ntasks-per-core=1
cd $SLURM_SUBMIT_DIR
module load charmm

c42b2 < file_name_water_overlay_1st.inp >& file_name_water_overlay_1st.out
c42b2 < file_name_water_overlay_2nd.inp >& file_name_water_overlay_2nd.out
c42b2 < file_name_add_salt_mk_coor.inp >& file_name_add_salt_mk_coor.out
c42b2 < file_name_mk_psf_salt.inp >& file_name_mk_psf_salt.out

