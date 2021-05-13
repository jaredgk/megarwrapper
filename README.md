## MEGA-R Wrapper

This wrapper allows for the integration of MEGA's compute core (MEGA-CC) into R workflows. It supports data input either via a data file (tree, sequence, or MEGA-specific filetype, .meg) or a data structure such as the APE package's tree structure. It handles providing the data to MEGA-CC, executing the job as specified by a .mao (MEGA Analysis Options) file, and reading output data back in to the appropriate R data structure.

#### Requirements
This wrapper requires MEGA-CC to be installed on the system path. Additionally, MEGA's prototyper is required to generate the .mao file for specifying analysis options. Both can be downloaded from the [MEGA software page.](megasoftware.net)

#### Installation
To load the package into R, run the following commands:

```R
install.packages("devtools")
```

