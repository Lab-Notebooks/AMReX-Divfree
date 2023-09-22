## Execution Environment for Testing Divergence Free Interpolation in Flash-X + AMReX

Overview of steps to get this lab notebook running.

1. Install Jobrunner, `pip install pyjobrunner==2023.8 --user`, make sure `~/.local/bin` is in your path.
   
2. Create a new sites folder for you machine see `sites/<site-name>`
 
3. Copy `sites/sedona/environment.sh` and `sites/sedona/Makefile.h` to `sites/<site-name>`.

4. Edit `sites/<site-name>/environment.sh` to set `MPI_HOME` and `HDF5_HOME`. 
   If HDF5 is not installed on your machine do step 7. 

5. Run `configure`:
  ```
  ./configure -s <site-name>
  ```
  This will create `config.sh`


6. Setup software stack:
  ```
  jobrunner setup software/amrex
  jobrunner setup software/flashx
  jobrunner setup software/flashkit
  ```

7. If HDF5 is not available on your local machine do:
  ```
  jobrunner setup  software/hdf5
  ```
   
8. Setup a test simulation:
  ```
  jobrunner setup simulation/DeformingBubble/DivFreeTest2D
  ```

9. Run the simulation
  ```
  jobrunner submit simulation/DeformingBubble/DivFreeTest2D
  ```
  Console output can be viewed in file `simulation/DeformingBubble/DivFreeTest2D/job.output`

10. Postprocessing:
   ```
   cd simulation/DeformingBubble/DivFreeTest2D
   flashkit create xdmf --auto
   ```    
   This will create `INS_Deforming_Bubble.xmf` that can be opened in paraview.
