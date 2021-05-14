## MEGA-R Wrapper

This wrapper allows for the integration of MEGA's compute core (MEGA-CC) into R workflows. It supports data input either via a data file (tree, sequence, or MEGA-specific filetype, .meg) or a data structure such as the APE package's tree structure. It handles providing the data to MEGA-CC, executing the job as specified by a .mao (MEGA Analysis Options) file, and reading output data back in to the appropriate R data structure.

#### Requirements
This wrapper requires MEGA-CC to be installed on the system path. Additionally, MEGA's prototyper is required to generate the .mao file for specifying analysis options. Both can be downloaded from the [MEGA software page.](megasoftware.net)

#### Installation
To load the package into R, run the following commands:

```R
install.packages("devtools")
devtools::install_github("jaredgk/megarwrapper")
```

#### Usage
Currently, R-MEGA provides two functions: runMega and runMegaOnData, each with the following arguments:

##### Required
* analysis_file: Path to MEGA Analysis Options file
* data_file/data: For runMega, name of input data file. For runMegaOnData, either a DNAbin object (FASTA sequence from APE) or phylo object (newick tree from APE)

##### Optional
* calib_file: Path to file with calibrations for timetree/reltime analysis
* groups_file: Path to file with group definitions for taxons
* tree_file: Path to newick tree file
* out_prefix: Prefix to use for temporary output files
* temp_input_prefix: Prefix to use for filename for input data
* keep_input: If true, will delete temporary input file after analysis completes

#### Output
Will return a named list where names are the file extension of the output MEGA file, and the values are the data stored in those files. CSV and trees (nwk/tre) will be read in to their apporopriate data structure.
