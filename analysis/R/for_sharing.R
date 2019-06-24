code_chunks <- c("load_packages", "load_data", "load_catalog", "load_filter",
                 "write_catalog_filter", "write_catalog_minimal", "full_catalog",
                 "calc_zero_checkouts", "calc_hipster", "dedupe_cat", "dedupe_hipster",
                 "clean_hipster", "finding_subjects")

rmd <- here::here("rmds", "analysis.Rmd")
outputDir <- here::here("assets", "data", "open_data")

puddingR::export_all(for_sharing, filename = "hipster", location = "open", codebook = TRUE, scripts = code_chunks,
                     script_file = rmd)

puddingR::export_code(file = rmd,
                      chunks = code_chunks,
                      output_file = "hipster",
                      output_dir = outputDir)

puddingR::knit_data_readme()

## troubleshooting

allChunks <- knitr::purl(rmd)
knitr::read_chunk(allChunks)

chunks <- knitr::knit_code$get()

toPrint <- chunks[code_chunks]
