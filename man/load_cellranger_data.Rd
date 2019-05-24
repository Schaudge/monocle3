% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/load_cellranger_data.R
\name{load_cellranger_data}
\alias{load_cellranger_data}
\title{Load data from the 10x Genomics Cell Ranger pipeline}
\usage{
load_cellranger_data(pipestance_path = NULL, genome = NULL,
  barcode_filtered = TRUE)
}
\arguments{
\item{pipestance_path}{Path to the output directory produced by Cell Ranger}

\item{genome}{The desired genome (e.g., 'hg19' or 'mm10')}

\item{barcode_filtered}{Load only the cell-containing barcodes}
}
\value{
a new CellDataSet object
}
\description{
Loads cellranger data into a CellDataSet object.  Note that if your dataset
is from version 3.0 and contains non-Gene-Expression data (e.g. Antibodies or
CRISPR features), only the Gene Expression data is returned.
}
\examples{
\dontrun{
# Load from a Cell Ranger output directory
gene_bc_matrix <- load_cellranger_data("/home/user/cellranger_output")
}
}