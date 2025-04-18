fastq-dump -help

Usage: fastq-dump [ options ] [ accessions(s)... ]

Parameters:

  accessions(s)                    list of accessions to process


Options:

  -A|--accession <accession>       Replaces accession derived from <path> in
                                     filename(s) and deflines (only for
                                     single table dump)
     --table <table-name>          Table name within cSRA object, default is
                                     "SEQUENCE"
     --split-spot                  Split spots into individual reads
  -N|--minSpotId <rowid>           Minimum spot id
  -X|--maxSpotId <rowid>           Maximum spot id
     --spot-groups <[list]>[,...]  Filter by SPOT_GROUP (member): name[,...]
  -W|--clip                        Remove adapter sequences from reads
  -M|--minReadLen <len>            Filter by sequence length >= <len>
  -R|--read-filter <filter>        Split into files by READ_FILTER value
                                     [split], optionally filter by value:
                                     [pass|reject|criteria|redacted]
  -E|--qual-filter                 Filter used in early 1000 Genomes data: no
                                     sequences starting or ending with >= 10N
     --qual-filter-1               Filter used in current 1000 Genomes data
     --aligned                     Dump only aligned sequences
     --unaligned                   Dump only unaligned sequences
     --aligned-region <name[:from-to]>
                                   Filter by position on genome. Name can
                                     eiter by accession.version (ex:
                                     NC_000001.10) or file specific name (ex:
                                     "chr1" or "1". "from" and "to" are
                                     1-based coordinates
     --matepair_distance <from-to|unknown>
                                   Filter by distance between matepairs. Use
                                     "unknown" to find matepairs split
                                     between the references. Use from-to to
                                     limit matepair distance on the same
                                     reference
     --skip-technical              Dump only biological reads
  -O|--outdir <path>               Output directory, default is working
                                     directory '.'
  -Z|--stdout                      Output to stdout, all split data become
                                     joined into single stream
     --gzip                        Compress output using gzip: deprecated,
                                     not recommended
     --bzip2                       Compress output using bzip2: deprecated,
                                     not recommended
     --split-files                 Write reads into separate files. Read
                                     number will be suffixed to the file
                                     name. NOTE! The `--split-3` option is
                                     recommended. In cases where not all
                                     spots have the same number of reads,
                                     this option will produce files that WILL
                                     CAUSE ERRORS in most programs which
                                     process split pair fastq files.
     --split-3                     3-way splitting for mate-pairs. For each
                                     spot, if there are two biological reads
                                     satisfying filter conditions, the first
                                     is placed in the `*_1.fastq` file, and
                                     the second is placed in the `*_2.fastq`
                                     file. If there is only one biological
                                     read satisfying the filter conditions,
                                     it is placed in the `*.fastq` file.All
                                     other reads in the spot are ignored.
  -G|--spot-group                  Split into files by SPOT_GROUP (member
                                     name)
  -T|--group-in-dirs               Split into subdirectories instead of files
  -K|--keep-empty-files            Do not delete empty files
  -C|--dumpcs <cskey>              Formats sequence using color space
                                     (default for SOLiD), "cskey" may be
                                     specified for translation or else
                                     specify "dflt" to use the default value
  -B|--dumpbase                    Formats sequence using base space (default
                                     for other than SOLiD).
  -Q|--offset <integer             Offset to use for quality conversion,
                                     default is 33
     --fasta <line-width>          FASTA only, no qualities, with can be
                                     "default" or "0" for no wrapping
     --suppress-qual-for-cskey     suppress quality-value for cskey
  -F|--origfmt                     Defline contains only original sequence
                                     name
  -I|--readids                     Append read id after spot id as
                                     'accession.spot.readid' on defline
     --helicos                     Helicos style defline
     --defline-seq <fmt>           Defline format specification for sequence.
     --defline-qual <fmt>          Defline format specification for quality.
                                     <fmt> is string of characters and/or
                                     variables. The variables can be one of:
                                     $ac - accession, $si spot id, $sn spot
                                     name, $sg spot group (barcode), $sl spot
                                     length in bases, $ri read number, $rn
                                     read name, $rl read length in bases.
                                     '[]' could be used for an optional
                                     output: if all vars in [] yield empty
                                     values whole group is not printed. Empty
                                     value is empty string or for numeric
                                     variables. Ex: @$sn[_$rn]/$ri '_$rn' is
                                     omitted if name is empty
     --ngc <path>                  <path> to ngc file
     --perm <path>                 <path> to permission file
     --location <location>         location in cloud
     --cart <path>                 <path> to cart file
     --disable-multithreading      disable multithreading
  -V|--version                     Display the version of the program
  -v|--verbose                     Increase the verbosity of the program
                                     status messages. Use multiple times for
                                     more verbosity.
  -L|--log-level <level>           Logging level as number or enum string.
                                     One of
                                     (fatal|sys|int|err|warn|info|debug) or
                                     (0-6) Current/default is warn
     --option-file file            Read more options and parameters from the
                                     file.
  -h|--help                        print this message

"fastq-dump" version 2.11.3