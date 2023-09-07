#!/bin/csh    
#SBATCH --job-name=cdcwtgtp
#SBATCH --partition=norm,ccr
#SBATCH --exclusive
#SBATCH --ntasks-per-core=1
cd $SLURM_SUBMIT_DIR
module load charmm

#c42b2 < cdcwtgtp_water_get_ini_coor.inp >& cdcwtgtp_water_get_ini_coor.out
#c42b2 < cdcwtgtp_water_mini_ini_coor.inp >& cdcwtgtp_water_mini_ini_coor.out
#c42b2 < cdcwtgtp_water_water_overlay_1st.inp >& cdcwtgtp_water_water_overlay_1st.out
#c42b2 < cdcwtgtp_water_water_overlay_2nd.inp >& cdcwtgtp_water_water_overlay_2nd.out
#c42b2 < cdcwtgtp_water_add_salt_mk_coor.inp >& cdcwtgtp_water_add_salt_mk_coor.out
c42b2 < cdcwtgtp_water_mk_psf_salt.inp >& cdcwtgtp_water_mk_psf_salt.out

