# my_analysis/Snakefile

RAW = "../raw_data/SRR25944771.fastq" 

rule all:
    input:
        "results/flye_assembly/assembly.fasta"

rule flye_assembly:
    input:
        RAW
    output:
        "results/flye_assembly/assembly.fasta"
    threads: 4
    shell:
        """
        flye \
          --nano-raw {input} \
          --genome-size 12m \
          --out-dir results/flye_assembly \
          --threads {threads}
        """
