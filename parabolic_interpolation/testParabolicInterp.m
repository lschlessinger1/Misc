% Test values of {(-1, 4), (0, 2), (3, 8)} match computed value within
% tolerance
x1 = -1; y1 = 4;
x2 = 0; y2 = 2;
x3 = 3; y3 = 8;
extremumActual = parabolicInterp(x1, x2, x3, y1, y2, y3);
extremumExpected = 0.5;
assertWithAbsTol(extremumActual, extremumExpected);

function assertWithAbsTol(actVal, expVal, varargin)
    % Helper function to assert equality within an absolute tolerance.
    % Takes two values and an optional message and compares
    % them within an absolute tolerance of 1e-6.
    tol = 1e-6;
    tf = abs(actVal-expVal) <= tol;
    assert(tf, varargin{:});
end