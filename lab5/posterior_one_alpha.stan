data {
  int M; // number of years
  vector[M] miles; // miles flown each year
  int y[M]; // number of fatal accidents
}

parameters {
   real alpha;
   real <lower=0> theta; // simulating half normal with constrains
}

model {
  alpha ~ normal(3.17,0.15);
  theta ~ normal(0,0.5);
  for (k in 1:M) {
    y[k] ~ poisson_log(alpha + theta*miles[k]);
  }
}

generated quantities {
    real y_sim[M];
    for (k in 1:M){
        y_sim[k] = poisson_log_rng(alpha + theta*miles[k]);
    }
}