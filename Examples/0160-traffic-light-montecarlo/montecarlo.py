import os
import sys
import math
import numpy as np
import time
import os.path

from OMPython import OMCSessionZMQ


omc = OMCSessionZMQ()
omc.sendExpression("getVersion()")
omc.sendExpression("cd()")

omc.sendExpression("loadModel(Modelica)")
omc.sendExpression("getErrorString()")

omc.sendExpression("loadFile(\"types.mo\")")
omc.sendExpression("getErrorString()")

omc.sendExpression("loadFile(\"car.mo\")")
omc.sendExpression("getErrorString()")

omc.sendExpression("loadFile(\"traffic-light.mo\")")
omc.sendExpression("getErrorString()")

omc.sendExpression("loadFile(\"ctr.mo\")")
omc.sendExpression("getErrorString()")

omc.sendExpression("loadFile(\"monitor.mo\")")
omc.sendExpression("getErrorString()")

omc.sendExpression("loadFile(\"system.mo\")")
omc.sendExpression("getErrorString()")

omc.sendExpression("buildModel(System, stopTime=50)")
#omc.sendExpression("getErrorString()")

#  begin testing

# seed random number generator
np.random.seed(1)

num_pass = 0
num_fail = 0
y = 0.0

with open ("log", 'wt') as f:
        f.write("Begin log"+"\n")
        f.flush()
        os.fsync(f)
        
with open ("output.txt", 'wt') as f:
        f.write("Outcomes"+"\n\n")
        f.flush()
        os.fsync(f)

for i in range(100):
#        print "Test ", i

        with open ("modelica_rand.in", 'wt') as f:
		rand1 = math.trunc(np.random.uniform(0,20)*10.0)/10.0
		f.write("q.ArrivalDelay="+str(rand1)+"\n")
                f.flush()
                os.fsync(f)

        with open ("log", 'a') as f:
                f.write("\nTest "+str(i)+" :\n")
                f.flush()
                os.fsync(f)
        
        os.system("./System -overrideFile=modelica_rand.in >> log")
	time.sleep(1.0)         # Delay to avoid races on file re-writings. Can be dropped for non-toy examples.
       # os.system("rm -f modelica_rand.in")    # .... to be on the safe side

	y = omc.sendExpression("val(m.y, 50.0, \"System_res.mat\")")
        os.system("rm -f System_res.mat")      # .... to be on the safe side
        
        print "Monitor value at iteration", i, ": ",  y
        
        with open ("output.txt", 'a') as g:
                if (y <= 0.5):
                        num_pass = num_pass + 1.0
                        g.write("y["+str(i)+"] = "+str(y)+": PASS with ArrivalDelay = "+str(rand1)+"\n")
                else:
                        num_fail = num_fail + 1.0
                        g.write("y["+str(i)+"] = "+str(y)+": FAIL with ArrivalDelay = "+str(rand1)+"\n")
                g.flush()
                os.fsync(g)

print ("num pass = ", num_pass)
print ("num fail = ", num_fail)
print ("total tests = ",  num_pass + num_fail)
print ("pass prob = ", num_pass/(num_pass + num_fail))
print ("fail prob = ", num_fail/(num_pass + num_fail))



