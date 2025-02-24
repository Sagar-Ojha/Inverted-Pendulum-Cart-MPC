# Inverted Pendulum on a Cart with Model Predictive Controller

Open **modelPredictiveControl_v0.slx** and uncomment only the subsystem that you want to run. There are a bunch of constrained and unconstrained dynamical systems in the file. You'll run a constrained pendulum cart system if the file is run as it is. Current implementation utilizes a linearized model at each operating point for prediction. I'll be working on non-linear MPC the next.

Declare *initial_conditions* and any other variables using **Command Window** ($initial\_conditions = [0; 0; deg2rad(0); 0];$).

Run **animationHelperMPC.m** to animate the simulink output.

The reference positions for the cart are as follows:

1) $3\ m$ for $t < 10\ s$
2) $0\ m$ for $10\ s < t <= 30\ s$
3) $-2\ m$ for $30\ s < t <= 60\ s$
4) $0\ m$ for $60\ s < t$

You may set the reference trajectory from **reference_trejectory** block inside **modelPredictiveControl_v0.slx**. In fact, feel free to tune the parameters and mess around with the code.

The simulation can be found [here](https://youtu.be/lmKCzDgQv-c). Note that the pendulum starts at the downward position and gets flipped upwards within a split second. Slow down the video to observe that.