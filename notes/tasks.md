- \[x\] Calculate velocities by averaging values from fine/coarse resolution and not directly from analytical solution at a given point (advised by Klaus and Weiqun).

- \[x\] Test divergence free interpolation in both paramesh and amrex using restart. First run a simulation using min/max refinement level as 1 and then restart with the desired AMR configuration. (NOTE: This worked and a test as been added to the suite. Use this notebook to update the tests by first using initial.toml and then restart.toml to check divergence is zero).
