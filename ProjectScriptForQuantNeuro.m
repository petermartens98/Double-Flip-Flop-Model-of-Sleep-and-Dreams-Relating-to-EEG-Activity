Parker Smith and Peter Martens
Quantitative Neuro
Spiking Models

%% Regular Spiking

%Setup Parameters
other_params.a=0.013;
other_params.b=0.19;
other_params.c=-65;
other_params.d=1.5;
other_params.S=0.5;

%Set up time steps
t0_ms = 0 ;
t_end_ms = 1000 ;
dt_ms = 0.1 ;
t_grid_ms = (t0_ms : dt_ms : t_end_ms) ;


v=-65;    % Initial values of v
u=other_params.b*v;                 % Initial values of u
other_params.I = 5; % test case for I
u_Euler = NaN(size(t_grid_ms)); % allocate an array of the same size as t_tgrid
v_Euler = NaN(size(t_grid_ms)); % allocate an array of the same size as t_tgrid

% Initializes Euler equation
v_Euler(1) = v ;
u_Euler(1) = u;



for t= 1:(length( t_grid_ms)-1)
%dv= 0.04v^2+5v + 140 - u + I;
%du = a(bv-u)
if (t <= 500 ) % Sets up time stamps
    other_params.I = 3;
else
    other_params.I = 5;
end
% Sets up changes when mv = 30
if (v_Euler(t) >= 30)
    v_Euler(t) = other_params.c;
    u_Euler(t) = u_Euler(t) + other_params.d;   
end
% Sets up Euler method for both u and v
dvdt=Vp(v_Euler(t), u_Euler(t), other_params);
dudt=Up(v_Euler(t), u_Euler(t), other_params);
%Performs Euler Method
v_Euler(t+1) = v_Euler(t)+dt_ms*dvdt;
u_Euler(t+1) = u_Euler(t)+dt_ms*dudt;

end
%Plots graph
plot(t_grid_ms, v_Euler);


%% Fast Spiking

other_params.a=0.04;
other_params.b=0.10;
other_params.c=-65;
other_params.d=3;
other_params.S=0.5;
t0_ms = 0 ;
t_end_ms = 250 ;
dt_ms = 0.1 ;
t_grid_ms = (t0_ms : dt_ms : t_end_ms) ;

v=-65;    % Initial values of v
u=other_params.b*v;                 % Initial values of u
other_params.I = 15;
u_Euler = NaN(size(t_grid_ms)); % allocate an array of the same size as t_trid
v_Euler = NaN(size(t_grid_ms));

v_Euler(1) = v ;
u_Euler(1) = u;



for t= 1:(length( t_grid_ms)-1)
%dv= 0.04v^2+5v + 140 - u + I;
%du = a(bv-u)
if (t <= 500)
    other_params.I = 0;
else
    other_params.I = 16;
end
if (v_Euler(t) >= 30)
    v_Euler(t) = other_params.c;
    u_Euler(t) = u_Euler(t) + other_params.d;   
end
% Sets up Euler method for both u and v
dvdt=Vp(v_Euler(t), u_Euler(t), other_params);
dudt=Up(v_Euler(t), u_Euler(t), other_params);
%Performs Euler Method
v_Euler(t+1) = v_Euler(t)+dt_ms*dvdt;
u_Euler(t+1) = u_Euler(t)+dt_ms*dudt;

end
%Plots
plot(t_grid_ms, v_Euler);

%% Thalamo-cortical (1)

other_params.a=0.025;
other_params.b=0.14;
other_params.c=-63;
other_params.d=4;
other_params.S=0.5;
t0_ms = 0 ;
t_end_ms = 1000 ;
dt_ms = 0.1 ;
t_grid_ms = (t0_ms : dt_ms : t_end_ms) ;

v=-63;    % Initial values of v
u=other_params.b*v;                 % Initial values of u
other_params.I = 10;
u_Euler = NaN(size(t_grid_ms)); % allocate an array of the same size as t_trid
v_Euler = NaN(size(t_grid_ms));

v_Euler(1) = v ;
u_Euler(1) = u;



for t= 1:(length( t_grid_ms)-1)
%dv= 0.04v^2+5v + 140 - u + I;
%du = a(bv-u)
if (t <= 500)
    other_params.I = 0;
else
    other_params.I = 10;
end
if (v_Euler(t) >= 30)
    v_Euler(t) = other_params.c;
    u_Euler(t) = u_Euler(t) + other_params.d;   
end
% Sets up Euler method for both u and v
dvdt=Vp(v_Euler(t), u_Euler(t), other_params);
dudt=Up(v_Euler(t), u_Euler(t), other_params);
%Performs Euler Method
v_Euler(t+1) = v_Euler(t)+dt_ms*dvdt;
u_Euler(t+1) = u_Euler(t)+dt_ms*dudt;

end
%Plots
plot(t_grid_ms, v_Euler);

%% Low-Theshold Spiking


other_params.a=0.02;
other_params.b=0.255;
other_params.c=-63;
other_params.d=1;
other_params.S=0.5;
t0_ms = 0 ;
t_end_ms = 250 ;
dt_ms = 0.1 ;
t_grid_ms = (t0_ms : dt_ms : t_end_ms) ;
v=-63;    % Initial values of v
u=other_params.b*v;                 % Initial values of u
other_params.I = 5;
u_Euler = NaN(size(t_grid_ms)); % allocate an array of the same size as t_trid
v_Euler = NaN(size(t_grid_ms));

v_Euler(1) = v ;
u_Euler(1) = u;



for t= 1:(length( t_grid_ms)-1)
%dv= 0.04v^2+5v + 140 - u + I;
%du = a(bv-u)
if (t <= 500)
    other_params.I = 0;
else
    other_params.I = 6;
end
if (v_Euler(t) >= 30)
    v_Euler(t) = other_params.c;
    u_Euler(t) = u_Euler(t) + other_params.d;   
end
% Sets up Euler method for both u and v
dvdt=Vp(v_Euler(t), u_Euler(t), other_params);
dudt=Up(v_Euler(t), u_Euler(t), other_params);
%Performs Euler Method
v_Euler(t+1) = v_Euler(t)+dt_ms*dvdt;
u_Euler(t+1) = u_Euler(t)+dt_ms*dudt;

end
%Plots
plot(t_grid_ms, v_Euler);


%The call for the V' equation
function dvdt = Vp(v, u, params)
dvdt = 0.04*v*v + 5*v + 140 - u + params.I;
end
%The call for the U' equation
function dudt = Up(v, u, params)
dudt = params.a*(params.b*v-u);
end