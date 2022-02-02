
function LoopProb
input Real T;  // time step (in days)
input Real sjt;  // Expecter soujourn time in state
output Real p;   // probability of staying in state (Loop Probability)

algorithm

// sjt(i,k)/T = 1/(1-p) => p = 1 - t/sjt(i,k)

p := 1 -  T/sjt ;

end LoopProb;