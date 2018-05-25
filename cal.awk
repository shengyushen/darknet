BEGIN{
	ssy=0;
}

{
	if($2=="conv") {
		featuremem=$15*$17*$19;
		print $15 "*" $17 "*" $19 "=" featuremem;
		ssy=ssy+featuremem;
		ssy1=ssy1+$20;
	} else if($2=="res") {
		featuremem=$10*$12*$14;
		print $10 "*" $12 "*" $14 "="  featuremem;
		ssy=ssy+featuremem;
	} else if($2=="upsample") {
		featuremem=$10*$12*$14;
		print $10 "*" $12 "*" $14 "=" featuremem;
		ssy=ssy+featuremem;
	} else {
		print
	}
}

END{
	print "total featuremem : " ssy;
	print "total GFLOP : " ssy1;
}
