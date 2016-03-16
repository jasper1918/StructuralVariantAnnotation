
example <- readVcf(.testfile("vcf4.2.example.sv.vcf"), "")
simple <- readVcf(.testfile("simple.vcf"), "")
breakend <- readVcf(.testfile("breakend.vcf"), "")

breakdancer <- readVcf(.testfile("breakdancer-1.4.5.vcf"), "")
#cortex <- readVcf(.testfile("cortex-1.0.5.14.vcf"), "")
#crest <- readVcf(.testfile("crest.vcf"), "")
delly <- readVcf(.testfile("delly-0.6.8.vcf"), "")
#gasv <- readVcf(.testfile("gasv-20140228.vcf"), "")
#gridss <- readVcf(.testfile("gridss-0.10.0.vcf"), "")
#lumpy <- readVcf(.testfile("lumpy-0.2.11.vcf"), "")
#pindel <- readVcf(.testfile("pindel-0.2.5b6.vcf"), "")
#socrates <- readVcf(.testfile("socrates-1.13.vcf"), "")

# callers <- list()
# callers[["breakdancer"]] <- breakdancer
# callers[["cortex"]] <- cortex
# callers[["crest"]] <- crest
# callers[["delly"]] <- delly
# callers[["gasv"]] <- gasv
# callers[["gridss"]] <- gridss
# callers[["lumpy"]] <- lumpy
# callers[["pindel"]] <- pindel
# callers[["socrates"]] <- socrates


# unpaired breakend
test_that("partner fails if missing mate", {
    expect_error(partner(breakendRanges(breakend)[1,]))
})
