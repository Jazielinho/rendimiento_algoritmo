# Autor> Jazielinho

# Comparacion big O

valores <- seq(from = 1, to = 10, by = 0.01)

o_constante <- rep(1, length(valores))
o_lineal <- valores
o_log_n <- log(valores)
o_n_log_n <- valores * log(valores)
o_n_2 <- valores ^ 2
o_2_n <- 2 ^ valores


plot(valores, o_constante, type = 'l', col = 1, xlim = c(1, 10), ylim = c(0, 100), lwd = 3,
     xlab = 'n', ylab = 'Big O')
lines(valores, o_lineal, col = 2, lwd = 3)
lines(valores, o_log_n, col = 3, lwd = 3)
lines(valores, o_n_log_n, col = 4, lwd = 3)
lines(valores, o_n_2, col = 5, lwd = 3)
lines(valores, o_2_n, col = 6, lwd = 3)

legend('topleft', 
       legend = c('O = 1', 'O = n', 'O = log(n)', 'O = n*log(n)', 'O = n^2', 'O = 2^n'),
       col = c(1, 2, 3, 4, 5, 6, 7),
       lwd = 3)
