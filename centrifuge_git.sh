#!/bin/bash

# make directory
mkdir database_new
cd database_new
# to download taxonomy from ncbi 
/centrifuge/centrifuge-1.0.4.1/centrifuge-download -P 50 -o taxonomy taxonomy
# to dowload database 
/centrifuge/centrifuge-1.0.4.1/centrifuge-download -P 50 -o library -m -d "bacteria" refseq > seqid2taxid.map

  # adding human 
/centrifuge/centrifuge-1.0.4.1/centrifuge-download -o library -m -d "vertebrate_mammalian" -a "Chromosome" -t 9606 -c 'reference genome' refseq >> seqid2taxid.map

cat library/archaea/*.fna > input-sequences.fna
cat library/vertebrate_mammalian/*.fna >> input-sequences.fna
cat library/viral/*.fna >> input-sequences.fna
cat library/fungi/*.fna >> input-sequences.fna
cat library/bacteria/*.fna >> input-sequences.fna

# can get rid of these now to recover some space unless wanted
  # but typically too many to do it with one command
#rm library/archaea/*.fna
#rm library/vertebrate_mammalian/*.fna
#rm library/viral/*.fna
#rm library/fungi/*.fna
#rm library/bacteria/*.fna

/centrifuge/centrifuge-1.0.4.1/centrifuge-build -p 50 --bmax 1342177280 --conversion-table seqid2taxid.map \
                                                --taxonomy-tree taxonomy/nodes.dmp --name-table taxonomy/names.dmp \
                                                input-sequences.fna centrifuge-ref-db