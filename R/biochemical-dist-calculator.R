###
# Functions for calculating biochemophysical or whatever distances from
# sequences using a distance matrix
# Zane Billings
# 2024-07-25
###

grantham <- function(seq1, seq2) {
	if (length(seq1) != length(seq2)) {
		rlang::abort("Your sequences should be aligned! They are different lengths.")
	}
}
