generated quantities {

  real alpha = normal_rng(3.17,0.15);
  real theta=fabs(normal_rng(0,0.5));
  int y_sim;
  real mean_miles = 0.57158;
    
  y_sim = poisson_log_rng(alpha + theta*mean_miles);

}