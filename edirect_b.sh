#!/bin/bash

{
    esearch -db taxonomy -query "Bacillus subtilis" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Escherichia coli" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Pseudomonas aeruginosa" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Listeria monocytogenes" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Enterococcus faecalis" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Staphylococcus aureus" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Salmonella enterica" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Lactobacillus fermentum" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    
    esearch -db taxonomy -query "Helicobacter pylori" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Mycoplasma genitalium" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Allobacillus halotolerans" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Staphylococcus epidermidis" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Mycobacterium fortuitum" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Lactobacillus gasseri" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Treponema pallidum" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
} > bacteria_taxid.txt

