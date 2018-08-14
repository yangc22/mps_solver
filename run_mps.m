clear variables, close all, clc

test = {'ex2ocp'};
for i = 1 : size(test, 2)
    filename = char(test(i));
    [y0, z0, para, t0, tf, t_span, outputFile, alpham, tol, nodes_max, mesh_max, nx, nu, nw, nd, ns] = generate_bvpdae(filename);
    nodes_max = 20000;
%     outputFile = [outputFile,'_sequentialQR'];
    mps_solver(y0, z0, para, t0, tf, outputFile, alpham, tol, nodes_max, mesh_max, nx, nu, nw, nd, ns);
end
