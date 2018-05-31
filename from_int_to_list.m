% % % % % % % % % % % % % % % % % % % % % % % % % % % %
% FUNCTION GOAL:
%   creat link list of nodes that holds the digits of a given number in
%   revers order.
% 
% INPUT:
%   input_int: non negetive integer. 
%   Each . [358 = 8>5>3, 3554 = 4>5>5>3]
%     
% OUTPUT:
%   head_node: head node of the link list that represent the integer.
%   
% EXAMPLE:
% [head_node1] = from_int_to_list(12500);
% 
% Maya Galili, May 2018
% % % % % % % % % % % % % % % % % % % % % % % % % % % %
function [head_node] = from_int_to_list(input_int)
input_int = num2str(input_int);
digit_sz = length(input_int);
head_node = dlnode(str2num(input_int(digit_sz)));
node = head_node;

for i=digit_sz-1:-1:1
    tmp_node = dlnode(str2num(input_int(i)));
    tmp_node.insertAfter(node);
    node = node.Next;
end
end