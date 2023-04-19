generated quantities {

  real alpha = normal_rng(3.17,0.15);
  real theta=fabs(normal_rng(0,0.00005));
  int y_sim;
  real mean_miles = 5715.8;
    
  y_sim = poisson_log_rng(alpha + theta*mean_miles);

}