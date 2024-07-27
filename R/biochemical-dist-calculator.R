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
	
	wiki_aa_order <- c(
		"ser", "arg", "leu", "pro", "thr", "ala", "val", "gly", "ile", "phe", "tyr",
		"cys", "his", "gln", "asn", "lys", "asp", "glu", "met", "trp"
	)
	
	grantham_matrix <-
		matrix(
			ncol = 20,
			nrow = 20,
			dimnames = list(wiki_aa_order, wiki_aa_order)
		)
	grantham_values <-
		c(
			110, 145, 74, 58, 99, 124, 56, 142, 155, 144, 112, 89, 68, 46, 121, 65,
			80, 135, 177, 102, 103, 71, 112, 96, 125, 97, 97, 77, 180, 29, 43,
			86, 26, 96, 54, 91, 101, 98, 92, 96, 32, 138, 5, 22, 36, 198, 99, 113,
			153, 107, 172, 138, 15, 61, 38, 27, 68, 42, 95, 114, 110, 169, 77, 76, 
			91, 103, 108, 93, 87, 147, 58, 69, 59, 89, 103, 92, 149, 47, 42, 65, 78,
			85, 65, 81, 128, 64, 60, 94, 113, 112, 195, 86, 91, 111, 106, 126, 107,
			84, 148, 109, 29, 50, 55, 192, 84, 96, 133, 97, 152, 121, 21, 88, 135,
			153, 147, 159, 98, 87, 80, 127, 94, 98, 127, 184, 21, 33, 198, 94, 109,
			149, 102, 168, 134, 10, 61, 22, 205, 100, 116, 158, 102, 177, 140, 28,
			40, 194, 83, 99, 143, 85, 160, 122, 36, 37, 174, 154, 139, 202, 154, 170,
			196, 215, 24, 68, 32, 81, 40, 87, 115, 46, 53, 61, 29, 101, 130, 94,
			23, 42, 142, 174, 101, 56, 95, 110, 45, 160, 181, 126, 152, 67
		)
	grantham_matrix[upper.tri(grantham_matrix)] <- grantham_values
	diag(grantham_matrix) <- rep(0, times = 20)
	grantham_matrix[lower.tri(grantham_matrix)] <-
		t(grantham_matrix)[lower.tri(grantham_matrix)]
	
}
