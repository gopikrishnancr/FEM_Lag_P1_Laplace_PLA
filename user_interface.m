% v.l.
%~~~~~~~~~Parrallel local matrix assembly for Lagrange P^1 F.E.M~~~~~~~~~~% 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                          Test problem                         %
%---------------------------------------------------------------%
%     - mu div(grad(u)) + alpha u  = f   in  \Omega             %
%                               u =  g  on  \partial\Omega     %
%                                                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


clearvars;      % POA : avoid using 'clear all' command <- memory consuming.
                % Use clearvars instead.
format long; 

% N : Number of refinements.
N = 5;

% Mesh selection parameter : Select the domain of desired shape with
% desired initial mesh. Further editing can be done in the file
% 'IntialMesh.m'. The current indices are :
% mesh_np = [1, square], mesh_np = [2, diamond], mesh_np = [3, L_shaped]
mesh_np  = 1;

                          
% mu and alpha are parameters controlling diffusion and convection terms.
% Parameter mm denotes the value of mu and l denotes the value of alpha;
mm = 3;          l = 2;

% Main function call %
FEM_diffusion_P1_PLA(N,mesh_np,mm,l);

