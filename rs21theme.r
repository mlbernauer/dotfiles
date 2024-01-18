require(lattice)

col = c('#0070F3','#651FFF','#D500F9','#00B0FF', '#1DE9B6', '#E7CB3C')
col = col[c(4,6,5,3,2,1)]

rs21.theme = trellis.par.get()

rs21.theme$plot.line$col = col[1]
rs21.theme$plot.symbol$col = col[1]
rs21.theme$plot.polygon$col = col[1]
rs21.theme$plot.polygon$border = 'white'

rs21.theme$box.dot$pch = '|'
rs21.theme$box.rectangle$col = col[1]
rs21.theme$box.umbrella$col = col[1]
rs21.theme$box.umbrella$lty = 1
rs21.theme$box.rectangle$fill = col[1]
rs21.theme$box.rectangle$alpha = 0.5

rs21.theme$superpose.line$col = col
rs21.theme$superpose.polygon$col = col
rs21.theme$superpose.polygon$border = 'white'
rs21.theme$superpose.symbol$col = col

rs21.theme$axis.components$right$tck = 0
rs21.theme$strip.background$col = rev(grey.colors(5))
rs21.theme$strip.shingle$col = col[2]
rs21.theme$strip.border$lwd = 1
rs21.theme$axis.line$lwd = 1
