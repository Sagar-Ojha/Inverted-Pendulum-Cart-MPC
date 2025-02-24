%% Settings----------------------------------------------------------------
animation = 1;   % 1 enables animation
anim_pause = 0.005; % higher values make animation slower

%% ------------------------------------------------------------------------
% System Parameters
cart_mass = 2; pendulum_mass = 1; pendulum_length = 0.3;

%% ------------------------------------------------------------------------
% States and time
states = [out.simout.Data(:,1) out.simout.Data(:,2) pi/180*out.simout.Data(:,3)];
time = out.tout;

% Animation
if (animation == 1)
    animate_pendulum_cart(anim_pause, states, time, cart_mass, ...
                          pendulum_mass, pendulum_length);
end