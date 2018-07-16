function [ u ] = pd_controller(~, s, s_des, params)
%PD_CONTROLLER  PD controller for the height
%
%   s: 2x1 vector containing the current state [z; v_z]
%   s_des: 2x1 vector containing desired state [z; v_z]
%   params: robot parameters
u=0;
kp=110;
kv=15;

err=s_des - s;

u = params.mass*(kp*err(1) + kv*err(2) + params.gravity);

% FILL IN YOUR CODE HERE


end

