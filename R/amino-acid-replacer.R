###
# Amino acid string replacer
# Zane Billings
# 2024-07-25
# Converts strings of amino acid sequences into character vectors of letters,
# abbreviated names, or full names; or any of the above into a single sequence
# string compatible with bioconductor pkgs.
###

replace_aa_name <- function(seq, from, to) {
	
	full_names <- c(
		"alanine", "arginine", "asparagine", "aspartate", "cysteine", "glutamate",
		"glutamine", "glycine", "histidine", "isoleucine", "leucine", "lysine",
		"methionine", "phenylalanine", "proline", "serine", "threonine",
		"tryptophan", "tyrosine", "valine"
	)
	
	three_letter <- c(
		"ala", "arg", "asn", "asp", "cys", "glu", "gln", "gly", "his", "ile",
		"leu", "lys", "met", "phe", "pro", "ser", "thr", "trp", "tyr", "val"
	)
	
	one_letter <- c(
		"a", "r", "n", "d", "c", "e", "q", "g", "h", "i", "l", "k", "m", "f", "p",
		"s", "t", "w", "y", "v"
	)
	
	# Check if the input is a single AA sequence string
	parsed_from <- substr(tolower(from), 1L, 1L)
	
	# Convert all input formats to numeric
	# If the input is a single AA string, convert to vector
	if (isTRUE((length(seq) == 1) && is.character(seq) && parsed_from == "o")) {
		cur <- strsplit(seq, "")[[1]]
	}
	

	
	# Convert numeric form to desired output
}