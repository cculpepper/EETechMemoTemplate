BEGIN { FS="," 
	}
{
if (NR == 1){	
	printf " \\begin\{tabular\}\[H\]\{|"
	for(c=0;c<NF;c++) printf " l |";	
	printf "\}\n"
	print "\\hline\n"
}
	  for (i=1; i<NF; i++) printf "%s & ", $(i)
	printf " %s \\\\ \\hline \n", $(NF)
  }
END {
	printf "\\end\{tabular\}"
}
