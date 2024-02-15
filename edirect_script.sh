#!/bin/bash

{
    esearch -db taxonomy -query "Saccharomyces cerevisiae" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Aspergillus fumigatus" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Aspergillus flavus" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Aspergillus niger" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Aspergillus terreus" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Candida albicans" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Candida auris" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Candida dubliniensis" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Candida glabrata" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Candida krusei" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Candida lusitaniae" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Candida parapsilosis" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Candida tropicalis" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Cryptococcus neoformans" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Encephalitozoon intestinalis" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Trichophyton rubrum" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    esearch -db taxonomy -query "Trichophyton mentagrophytes" | efetch -format docsum | xtract -pattern DocumentSummary -element ScientificName TaxId
    
} > fungus_tax_ids.txt

