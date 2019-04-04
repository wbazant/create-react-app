build() {
  date > build-time.txt
  curl ftp://ftp.ebi.ac.uk/pub/databases/wormbase/STAFF/wbazant/wbps11.schistosoma_mansoni_prjea36577.current_to_previous_id.tsv \
   > test.tsv
}

handler() {
  echo "Build time:   $(cat build-time.txt)"
  echo "Current time: $(date)"
  echo ""
  cat test.tsv
}

