% % % % % % % % % % % % % % % % % % % % % % % % % % % %
% Script Goal:
%   sum up 2 positive numbers represented by 2 linked lists in revers order.
% 
% INPUTS:
%   head_node1,head_node2: the head nodes of 2 link lisrs. 
%   Each list node hold a digit of the number and the nodes are sorted in
%   revers order. [358 = 8>5>3, 3554 = 4>5>5>3]
%     
% OUTPUTS:
%   res_head_node: head node of the link list that represent the sum of
%   the 2 numberes represented by the given lists.
%   
% EXAMPLE:
% [head_node1] = from_int_to_list(12500);
% print_link_list(head_node1);
% 
% [head_node2] = from_int_to_list(34);
% print_link_list(head_node2);
% 
% [res_head_node] = sum_link_lists(head_node1,head_node2);
% print_link_list(res_head_node);
% 
% Maya Galili, May 2018
% % % % % % % % % % % % % % % % % % % % % % % % % % % %

function [res_head_node] = sum_link_lists(head_node1,head_node2)
[res_num1] = revList_to_num(head_node1);
[res_num2] = revList_to_num(head_node2);
[res_head_node] = from_int_to_list(res_num1 + res_num2);
end

function [res_num] = revList_to_num(head_node)
% init vars
node = head_node;
res_num = node.Data;
tens = 0;

while ~isempty(node.Next)
    node = node.Next;
    tens = tens + 1;
    res_num = res_num + (10^tens)*node.Data;
end
end