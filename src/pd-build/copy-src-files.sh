# move all odot files into one place?

COBJECT_LIST=(o.compose o.display o.append o.atomize o.bundle o.change o.collect o.cond o.context o.dict o.difference o.downcast o.explode o.expr o.expr.codebox o.flatten o.if o.intersection o.messageiterate o.listenumerate o.mappatch o.message o.pack o.pak o.prepend o.print o.printbytes o.route o.schedule o.select o.slip.decode o.slip.encode o.table o.timetag o.union o.unless o.validate o.var o.when)

for f in ${COBJECT_LIST[*]}
do
    cp ../$f/*.c .
    cp ../$f/*.h . 2> /dev/null
done

cp ../include/odot.c .
cp ../include/opd_textbox.[ch] .
