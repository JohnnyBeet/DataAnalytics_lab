data {
   int<lower=0> N; // no of trials
   int<lower=0> y; // model output (no of allergic reactions)
}

parameters {
   real<lower=0,upper=1> p; // declaration and constrains for prior
}

model{
    p ~ normal(0.2, 0.01); // prior predictive distribution using normal distribution around mean 0.2
    y ~ binomial(N,p); // binomial distribution as stated in exercise
}

generated quantities {
   int y_pred = binomial_rng(N,p);
}