function [F,Fz] = autoGen_dynamics(t,q,dq,u,m,g,l,c,empty)
%AUTOGEN_DYNAMICS
%    [F,FZ] = AUTOGEN_DYNAMICS(T,Q,DQ,U,M,G,L,C,EMPTY)

%    This function was generated by the Symbolic Math Toolbox version 6.2.
%    23-Sep-2015 14:09:01

t2 = 1.0./l.^2;
t3 = 1.0./m;
F = [dq+empty;empty-t2.*t3.*(-u+c.*dq+g.*l.*m.*sin(q))];
if nargout > 1
    Fz = [empty;empty;empty;empty-(g.*cos(q))./l;empty+1.0;empty-c.*t2.*t3;empty;empty+t2.*t3];
end
