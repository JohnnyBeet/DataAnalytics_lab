generated quantities {
    real mu = normal_rng(178, 15);
    real sigma = exponential_rng(0.067); 
    real height = normal_rng(mu, sigma);

    // uncomment below for prior to be fitted to data
    // real mu = normal_rng(155, 5);
    // real sigma = uniform_rng(0, 5); 
    // real height = normal_rng(mu, sigma);
}