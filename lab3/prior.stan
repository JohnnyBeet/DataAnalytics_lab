generated quantities {
   int<lower=0> N=50;//no of trials
   int<lower=0> y; //no of successes
   real<lower=0,upper=1> p=normal_rng(0.2, 0.01); //a priori probability

   y = binomial_rng(N,p);
}