archive_name=odot-Max-Win64-`git describe --tags --long`-`git branch | egrep '^\*' | awk '{print $2}'`.zip

deprecated_externs=(o.expr o.message o.pak o.unless o.when)
dev_externs=(o.atomize o.context o.downcast o.mappatch o.messageiterate o.slip.decode o.slip.encode o.table o.validate)
legit_externs=(o.append o.change o.collect o.compose o.cond o.dict o.difference o.display o.edge~ o.explode o.expr.codebox o.flatten o.if o.intersection o.listenumerate o.pack o.prepend o.print o.printbytes o.route o.schedule o.select o.timetag o.union o.var)
packagedirs=(clippings code default-definitions default-settings docs examples extensions externals extras help init interfaces java-classes java-doc javascript jsextensions jsui license.txt media misc patchers object-prototypes queries readme.txt source support templates)
nonpackagedirs=(dev deprecated)
dirs=("${packagedirs[@]}" "${nonpackagedirs[@]}")

mkdir odot && mkdir odot/externals

for f in ${dirs[*]}
do
	[ -e $f ] && cp -r $f odot
done

mkdir odot/dev/externals && mkdir odot/deprecated/externals

for f in ${legit_externs[*]}
do
	cp src/build/Release/$f.mxe64 odot/externals
done

for f in ${dev_externs[*]}
do
	cp src/build/Release/$f.mxe64 odot/dev/externals
done

for f in ${deprecated_externs[*]}
do
	cp src/build/Release/$f.mxe64 odot/deprecated/externals
done

zip -r $archive_name odot && rm -r odot
