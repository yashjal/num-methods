function [ A ] = getA( t,w,c )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

A = zeros(1,3);
A(1,1) = exp(t-5);
A(1,2) = 1/((w/100)^2);
A(1,3) = sqrt(c);

end

