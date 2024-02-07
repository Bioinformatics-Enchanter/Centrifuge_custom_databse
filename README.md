# Creating Snakemake pipeline for metagenomics classifier tool: Centrifuge for Oxford Nanopore reads.

- Centrifuge is microbial classification tools used for rapid and accurate labeling of reads and there classification. 
- Centrifuge use Burrows-Wheeler transform (BWT) and the Ferragina-Manzini (FM) index method to classify microbial community. 
- For classification of species usually alignment is not needed, therefore for classification, indxes are build with large set of target genomes. 
- For this centrifuge version 1.0.4 is used to build indexes for Bacteria, Fungi, Virus and human gnomes. 

# Building index for Bacteria, fungi, virues

- To build index centrifuge use following files:
    - taxonomy/name.dmp file 
    - taxonomy/node.dmp file 
    - library/input_sequences.fna
    - seqid2taxid.map
  
- After building indexes it give outputs with suffixes .1.cf, 2..cf and so on. 






